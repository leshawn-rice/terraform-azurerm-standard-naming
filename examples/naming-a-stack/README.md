# Naming a stack

Derives the name of every resource in a stack from one `locals` block of shared
descriptors.

```sh
terraform init
terraform apply
```

```
names = {
  resource_group  = "rg-it-payments-prod"
  storage_account = "stitpayprod001"
  subnet          = "snet-it-payments-api-prod-eus2-001"
  virtual_network = "vnet-it-payments-prod-eus2"
}
```

Three of the module's per-type rules show up here:

- the resource group drops the region and the instance number,
- the virtual network drops the instance number,
- the storage account drops the region *and* its separators, because Azure allows
  only lowercase alphanumerics in a storage account name.
