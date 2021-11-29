terraform {
  backend "remote" {
    organization = "barretto"

    workspaces {
      name = "tfe-provider-test-source"
    }
  }
}

resource "random_pet" "pet" {}

output "pet" {
  value = random_pet.pet.id
}
