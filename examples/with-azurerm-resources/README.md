# With azurerm resources

Feeds the generated names straight into `azurerm_resource_group` and
`azurerm_storage_account`.

This is the only example that declares the azurerm provider, so `terraform plan`
here needs Azure credentials. The naming module does not — it creates nothing and
calls no provider.

```sh
terraform init
terraform plan
```

The storage account is the interesting one: Azure allows only lowercase
alphanumerics, so the module drops the separators and the region, yielding
`stitpayprod001` rather than `st-it-pay-prod-eus2-001`.
