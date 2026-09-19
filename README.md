# terraform-azurerm-standard-naming

A Terraform module for naming Azure resources. It turns a set of descriptors — resource type,
business unit, application, workload, environment, region, instance — into a single name that
follows the
[Cloud Adoption Framework naming convention](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming),
and fails the plan if that name would be rejected by Azure.

It is published under the `azurerm` namespace because its knowledge is entirely Azure-specific —
the abbreviations, region codes and per-resource-type length and character rules it encodes. It
does not declare or call the provider itself, so it creates no resources and needs no
credentials: give it strings, get a validated name back.

```hcl
module "vm_name" {
  source  = "leshawn-rice/standard-naming/azurerm"
  version = "1.1.0"

  resource_type   = "virtual machine"
  business_unit   = "it"
  application     = "tf"
  workload        = "test"
  environment     = "dev"
  location        = "westus"
  instance_number = "1"
}

# module.vm_name.name == "vm-it-tf-test-dev-wus-001"
```

## Why

Azure's naming rules are inconsistent per resource type: a storage account is 24 lowercase
alphanumeric characters with no hyphens, a virtual machine allows 64 characters with hyphens,
an App Service is global and so carries no region. Encoding those differences in each module
that needs a name is where drift starts. This module centralises them:

- **One convention.** Every name is assembled in the same segment order, from the same inputs.
- **Standard abbreviations.** 606 accepted spellings resolve to Microsoft's recommended
  abbreviations, so `"Virtual Machine"`, `"virtualmachine"` and `"vm"` all produce `vm`.
- **Per-resource rules applied automatically.** Hyphens are dropped where Azure forbids them,
  and the region or instance segment is omitted for resource types that do not use one.
- **Validated at plan time.** Every abbreviation carries the real length and character limits
  for its resource type, so a name Azure would reject raises an error during `terraform plan`
  rather than during `apply`.

## Usage

```hcl
module "storage_name" {
  source  = "leshawn-rice/standard-naming/azurerm"
  version = "1.1.0"

  resource_type   = "storage account"
  business_unit   = "it"
  application     = "tf"
  workload        = "test"
  environment     = "dev"
  location        = "westus"
  instance_number = "1"
}

resource "azurerm_storage_account" "this" {
  name                     = module.storage_name.name # "stittftestdev001"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = "westus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
```

The module is cheap to call, so the usual pattern is one `locals` block of shared
descriptors and one module call per resource that needs a name.

### Examples

| Example | What it shows |
|---|---|
| [basic](https://github.com/leshawn-rice/terraform-azurerm-standard-naming/blob/main/examples/basic) | Naming a single resource from a full set of descriptors. |
| [naming-a-stack](https://github.com/leshawn-rice/terraform-azurerm-standard-naming/blob/main/examples/naming-a-stack) | Deriving every name in a stack from one shared `locals` block. |
| [with-azurerm-resources](https://github.com/leshawn-rice/terraform-azurerm-standard-naming/blob/main/examples/with-azurerm-resources) | Feeding the generated names into real `azurerm` resources. |

The first two create nothing and need no provider or credentials, so they run as-is.

### Using a Git source

```hcl
module "vm_name" {
  source = "git::https://github.com/leshawn-rice/terraform-azurerm-standard-naming.git?ref=1.1.0"

  resource_type = "vm"
  environment   = "dev"
}
```

## How a name is built

### 1. Inputs are normalised

Every input is trimmed and lowercased. `null` is treated as an empty string, and empty segments
are dropped from the name entirely (no doubled separators). **The resulting name is always
lowercase** — this is the lowest common denominator across Azure resource types, and it keeps
names stable regardless of how callers capitalise their inputs.

### 2. The resource type becomes an abbreviation

`resource_type` is looked up in a table of 606 accepted spellings. A value that is not in the
table is **used verbatim** rather than rejected, which means a typo produces a name built on the
typo — check the [supported resource types](https://github.com/leshawn-rice/terraform-azurerm-standard-naming/blob/main/docs/resource-types.md) reference if a name looks
wrong. Unrecognised types also fall back to the `default` validation rules (63 characters,
`^[a-z0-9-]+$`) instead of the resource-specific ones.

### 3. Segments are joined in a fixed order

| Position | Segment | Source |
|---|---|---|
| 1 | Resource abbreviation | `resource_type` (always present) |
| 2 | Business unit | `business_unit` |
| 3 | Application | `application` |
| 4 | Workload | `workload` |
| 5 | Environment | `environment` |
| 6 | Region | `location`, abbreviated |
| 7 | Instance | `instance_number`, zero-padded |

### 4. The separator depends on the resource type

Segments are joined with `-`, except for resource types that Azure restricts to lowercase
alphanumerics, where they are concatenated with no separator at all:

| Abbreviation | Resource |
|---|---|
| `as` | Analysis Services server |
| `ba` | Batch account |
| `cosmos` | Cosmos DB account |
| `cr` | Container Registry |
| `dec` | Data Explorer cluster |
| `dla` | Data Lake Analytics account |
| `dls` | Data Lake Store account |
| `fdfp` | Front Door firewall policy |
| `gal` | Compute gallery |
| `np` | AKS user node pool |
| `npsystem` | AKS system node pool |
| `pbi` | Power BI Embedded capacity |
| `st` | Storage Account |
| `stvm` | VM Storage Account |
| `syndp` | Synapse SQL dedicated pool |
| `synplh` | Synapse private link hub |
| `synsp` | Synapse Spark pool |
| `waf` | Web Application Firewall policy |

The list is derived from the validation rules: a resource whose pattern has no
hyphen in its character set is concatenated, because joining it with `-` would
produce a name the module itself would then reject. `cosmos` is the one entry
kept by convention rather than necessity — Azure permits hyphens in Cosmos DB
account names, but the module's house style leaves them out.

So `storage account` + `it`/`tf`/`test`/`dev` + instance `1` yields `stittftestdev001`, not
`st-it-tf-test-dev-001`.

### 5. The region is abbreviated

`location` accepts either the compact form (`westus`) or the spaced form (`west us`) and is
replaced with its abbreviation (`wus`). A region not in the table is used verbatim, so a name
built from an unmapped region may be longer than expected. See
[Supported regions](#supported-regions) below.

### 6. The instance number is zero-padded

`instance_number` is a string but must parse as a number; it is formatted to three digits, so
`"1"` becomes `001` and `"12"` becomes `012`. A non-numeric value fails the plan with a
conversion error. Values above `999` are not truncated — `"1234"` becomes `1234`.

### 7. Some resource types drop segments

Resources that are not region-specific omit the region segment even when `location` is set, and
resources that are typically singular omit the instance segment even when `instance_number` is
set.

| Segment omitted | Abbreviations |
|---|---|
| Region | `bp`, `cr`, `mg`, `rg`, `st`, `ts`, `adf`, `app`, `bpa`, `dls`, `iot`, `apim`, `func`, `sbns`, `srch`, `pview`, `redis`, `cosmos`, `policy` |
| Instance | `vnet`, `cr`, `rg`, `mg`, `ase`, `dce`, `dns`, `app`, `as`, `policy` |

## Validation

Every generated name is checked against three constraints held per resource type
in `local.validation_map` — a minimum length, a maximum length, and a character
pattern. **All 200 abbreviations have a dedicated entry**; the `default` entry
(1-63 characters, `^[a-z0-9-]+$`) applies only to a `resource_type` the module
does not recognise.

169 of the 200 entries come from Microsoft's
[Naming rules and restrictions for Azure resources](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules),
and each cites the resource provider entity it was read from. The other 31 cover
resources that article does not list; they take the rule of the closest
documented sibling and are marked *no published rule*. The full table, with the
source of every entry, is in
[docs/validation-rules.md](https://github.com/leshawn-rice/terraform-azurerm-standard-naming/blob/main/docs/validation-rules.md).

Validation runs as `precondition` blocks on the `is_name_valid` output, which means **it is
enforced during `terraform plan` whether or not you reference that output**. The output itself
is always `true`; an invalid name is an error, not a `false` return:

```
Error: Module output value precondition failed

  on .terraform/modules/bad/outputs.tf line 11, in output "is_name_valid":
   11:     condition     = length(local.name) <= local.name_max_length
    ├────────────────
    │ local.name is "staveryverylongapplicationnameanalyticsplatformproduction"
    │ local.name_max_length is 24

The resource name 'staveryverylongapplicationnameanalyticsplatformproduction'
exceeds the maximum allowed length of 24 characters for resource type
'storageaccount'.
```

When you hit this, shorten a descriptor — abbreviate the application or workload — rather than
dropping the resource type prefix.

Nine resource types have limits too tight to carry a full descriptor set at all.
With `it`/`tf`/`test`/`dev`/`westus`/`1` they all overflow, so plan on fewer or
shorter segments for them:

| Abbreviation | Resource | Max |
|---|---|---:|
| `np` | AKS user node pool | 12 |
| `npsystem` | AKS system node pool | 12 |
| `cld` | Cloud Service | 15 |
| `synsp` | Synapse Spark pool | 15 |
| `amg` | Azure Managed Grafana | 23 |
| `sf` | Service Fabric cluster | 23 |
| `sfmc` | Service Fabric managed cluster | 23 |
| `kv` | Key vault | 24 |
| `kvmhsm` | Key Vault Managed HSM | 24 |

## Worked examples

All of the following are produced by the module as written.

| `resource_type` | `business_unit` | `application` | `workload` | `environment` | `location` | `instance_number` | Result |
|---|---|---|---|---|---|---|---|
| `virtual machine` | `it` | `tf` | `test` | `dev` | `westus` | `1` | `vm-it-tf-test-dev-wus-001` |
| `storage account` | `it` | `tf` | `test` | `dev` | `westus` | `1` | `stittftestdev001` |
| `container registry` | `it` | `tf` | `test` | `dev` | `westus` | `1` | `crittftestdev` |
| `cosmosdb` | `it` | `tf` | `test` | `dev` | `westus` | `1` | `cosmosittftestdev001` |
| `virtual network` | `it` | `tf` | `test` | `dev` | `westus` | `1` | `vnet-it-tf-test-dev-wus` |
| `app service` | `it` | `tf` | `test` | `dev` | `westus` | `1` | `app-it-tf-test-dev` |
| `apimanagement` | `it` | `tf` | `test` | `dev` | `westus` | `2` | `apim-it-tf-test-dev-002` |
| `resource group` | | `payments` | | `prod` | `eastus` | `1` | `rg-payments-prod` |
| `Key Vault` | | `pay` | | `prod` | `East US 2` | `3` | `kv-pay-prod-eus2-003` |
| `subnet` | | `payments` | `api` | `prod` | `uksouth` | `2` | `snet-payments-api-prod-uks-002` |
| `gallery` | `it` | `tf` | | `dev` | | `1` | `galittfdev001` |

Note how `virtual network` drops the instance, `app service` drops both the region and the
instance, `apimanagement` drops only the region, and the four no-hyphen types concatenate. The
Key Vault row uses `pay` rather than `payments` deliberately: at 24 characters, `kv` cannot fit
the longer form alongside a region and instance.

## Known gaps

These are current behaviours of the module worth knowing before you rely on it:

- **31 validation entries have no published rule.** Microsoft's naming-rules
  article does not cover every resource the abbreviation table names. Those
  entries borrow the constraints of the closest documented sibling and are marked
  *no published rule* in [docs/validation-rules.md](https://github.com/leshawn-rice/terraform-azurerm-standard-naming/blob/main/docs/validation-rules.md).
  They are plausible, not authoritative — verify before depending on them.
- **Windows VM names are not special-cased.** `vm` and `vmss` use the Linux limit
  of 64 characters; Azure caps Windows VM names at 15. The module cannot see the
  OS, so a Windows VM name between 16 and 64 characters passes here and is
  rejected by Azure.
- **Aliases must match exactly.** Only the spellings listed in
  [docs/resource-types.md](https://github.com/leshawn-rice/terraform-azurerm-standard-naming/blob/main/docs/resource-types.md) are recognised.
  `"api management"`, for instance, is not one of them — `"apimanagement"`,
  `"api management service instance"` and `"apim"` are.

## Supported resource types

606 accepted spellings across 15 categories resolve to 200 distinct abbreviations. The full
table is in [docs/resource-types.md](https://github.com/leshawn-rice/terraform-azurerm-standard-naming/blob/main/docs/resource-types.md).

## Supported regions

Any value not listed here is used verbatim (lowercased).

| Geography | Accepted `location` values | Abbreviation |
|---|---|---|
| United States | `eastus`, `east us` | `eus` |
|  | `eastus2`, `east us 2` | `eus2` |
|  | `centralus`, `central us` | `cus` |
|  | `westus`, `west us` | `wus` |
|  | `westus2`, `west us 2` | `wus2` |
|  | `westus3`, `west us 3` | `wus3` |
|  | `northcentralus`, `north central us` | `ncus` |
|  | `southcentralus`, `south central us` | `scus` |
| Europe | `northeurope`, `north europe` | `neu` |
|  | `westeurope`, `west europe` | `weu` |
|  | `francecentral`, `france central` | `frc` |
|  | `francesouth`, `france south` | `frs` |
|  | `germanywestcentral`, `germany west central` | `gwc` |
|  | `germanynortheast`, `germany north east` | `gne` |
|  | `norwayeast`, `norway east` | `noe` |
|  | `norwaywest`, `norway west` | `now` |
|  | `switzerlandnorth`, `switzerland north` | `swn` |
|  | `switzerlandwest`, `switzerland west` | `sww` |
| Asia Pacific | `southeastasia`, `south east asia` | `sea` |
|  | `eastasia`, `east asia` | `eas` |
|  | `japaneast`, `japan east` | `je` |
|  | `japanwest`, `japan west` | `jw` |
|  | `koreacentral`, `korea central` | `krn` |
|  | `koreasouth`, `korea south` | `krs` |
| Australia | `australiaeast`, `australia east` | `aea` |
|  | `australiasoutheast`, `australia southeast` | `ases` |
|  | `australiacentral`, `australia central` | `aac` |
|  | `australiacentral2`, `australia central 2` | `aac2` |
| India | `centralindia`, `central india` | `cin` |
|  | `southindia`, `south india` | `sin` |
|  | `westindia`, `west india` | `win` |
| Canada | `canadacentral`, `canada central` | `cac` |
|  | `canadaeast`, `canada east` | `cae` |
| United Kingdom | `uksouth`, `uk south` | `uks` |
|  | `ukwest`, `uk west` | `ukw` |
| United Arab Emirates | `uaenorth`, `uae north` | `uan` |
|  | `uaecentral`, `uae central` | `uac` |
| Brazil | `brazilsouth`, `brazil south` | `brs` |
|  | `brazilsoutheast`, `brazil southeast` | `brse` |

## Reference

<!-- BEGIN_TF_DOCS -->
### Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.5 |

### Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_resource_type"></a> [resource\_type](#input\_resource\_type) | (Required) The Azure resource type to generate a name for. Accepts a friendly name (`virtual machine`, `virtualmachine`) or the abbreviation itself (`vm`); matching is case-insensitive and surrounding whitespace is trimmed. See the [Supported resource types](https://github.com/leshawn-rice/terraform-azurerm-standard-naming/blob/main/docs/resource-types.md) reference. An unrecognised value is used verbatim (lowercased) as the name prefix. | `string` | n/a | yes |
| <a name="input_business_unit"></a> [business\_unit](#input\_business\_unit) | (Optional) The business unit or domain that owns the resource (e.g. `it`, `fin`). Lowercased before use; omitted from the name when empty. | `string` | `""` | no |
| <a name="input_application"></a> [application](#input\_application) | (Optional) The primary application or service identifier (e.g. `tf`, `payments`). Lowercased before use; omitted from the name when empty. | `string` | `""` | no |
| <a name="input_workload"></a> [workload](#input\_workload) | (Optional) The workload or specific role the resource fills (e.g. `test`, `api`). Lowercased before use; omitted from the name when empty. | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | (Optional) The environment identifier (e.g. `dev`, `prod`). Lowercased before use; omitted from the name when empty. | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | (Optional) The Azure region. Accepts either form of the region name (`westus` or `west us`) and is replaced with its abbreviation (`wus`). An unrecognised region is used verbatim (lowercased). Omitted from the name when empty, and for resource types that are not region-specific. | `string` | `""` | no |
| <a name="input_instance_number"></a> [instance\_number](#input\_instance\_number) | (Optional) The instance number, zero-padded to three digits in the final name (`1` becomes `001`). Must be parseable as a number. Omitted from the name when empty, and for resource types that are not instanced. | `string` | `""` | no |

### Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_is_name_valid"></a> [is\_name\_valid](#output\_is\_name\_valid) | Always `true`. The preconditions on this output enforce the minimum length, maximum length and character pattern for the resource type, so an invalid name fails the plan rather than returning `false`. |
| <a name="output_name"></a> [name](#output\_name) | The generated resource name, in the form `<abbreviation>-<business_unit>-<application>-<workload>-<environment>-<location>-<instance_number>`. Empty segments are dropped, and the separator is omitted entirely for resource types that disallow hyphens (e.g. storage accounts). |
<!-- END_TF_DOCS -->

## Testing

The module is covered by Terraform's native test framework.

```sh
terraform init -backend=false
terraform test
```

| File | Covers |
|---|---|
| `tests/all-resource-types.tftest.hcl` | Every one of the 200 abbreviations, asserting the exact generated name. Because validation runs during the plan, a type whose rules and generated name disagree fails here. |
| `tests/naming.tftest.hcl` | The build pipeline: alias resolution, case and whitespace handling, null and empty segments, segment order, region abbreviation, instance padding, and the per-type separator and omission rules. |
| `tests/validation.tftest.hcl` | Names Azure would reject — too long, too short, and illegal characters — each asserted with `expect_failures`. |
| `tests/minimal.tftest.hcl` | The smallest useful call per resource type, via the fixtures in `tests/minimal`. |
| `tests/full.tftest.hcl` | Every input populated, via the fixtures in `tests/full`. |

The first three run against the root module directly with `variables` blocks; the
last two use the fixture directories.

## Maintaining

Adding a resource type touches four places:

1. `local.resource_abbreviations` in `locals.tf` — the accepted spellings. Keys
   are matched against a lowercased `resource_type`, so they must be lowercase.
2. `local.validation_map` — a dedicated entry. Read the limits from
   [Naming rules and restrictions for Azure resources](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules)
   and cite the provider entity in the comment, as the existing entries do. Reuse
   a pattern from `local.regexp_patterns` rather than inlining a regex.
3. The omission lists, if the resource is not region-specific or not instanced.
   List the *abbreviation*, not one of its aliases. If its pattern has no hyphen
   in the character set, it **must** also go in
   `local.no_delimiter_resource_types`, or the module will generate names it then
   rejects.
4. `tests/all-resource-types/main.tf` — add the abbreviation to
   `local.resource_types`, and its expected name to
   `tests/all-resource-types.tftest.hcl`. Give it an entry in `local.overrides`
   if the default `dev` / `1` descriptors overflow its maximum length.

Then regenerate and check:

```sh
terraform fmt -recursive
terraform-docs .   # rewrites the block between the TF_DOCS markers in this README
terraform test
```

`.terraform-docs.yml` is deliberately untracked, so a fresh clone will not have
it; keep a copy alongside the repo. The two reference tables under `docs/` are
derived from `locals.tf` by hand — keep them in step.

## License

[MIT](https://github.com/leshawn-rice/terraform-azurerm-standard-naming/blob/main/LICENSE) © Leshawn Rice
