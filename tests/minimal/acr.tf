# A bare "cr" is only 2 characters; Microsoft.ContainerRegistry/registries
# requires at least 5, so the minimal case for this type needs descriptors.
module "test_acr_minimal" {
  source          = "../../"
  resource_type   = "containerregistry" # maps to "cr"
  application     = ""
  workload        = ""
  environment     = "dev"
  location        = ""
  business_unit   = ""
  instance_number = "" # "cr" is not instanced, so this would be dropped anyway
}
