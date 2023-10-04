terraform {
    required_providers {
        scalr = {
            source = "registry.scalr.dev/scalr/scalr"
            version= "1.0.0-rc-develop"
        }
    }
}


provider scalr {
   hostname = "runs.kostya-runs.testenv.scalr.dev"
   token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ1c2VyIiwianRpIjoiYXQtdjBvM2UxbGszZWUwYWsycGYifQ.h60fNZ1FB6IKtF5ptXmPidmbNCcIyWMIXQ4uckHTmXg"
 }


 
 
 resource "scalr_workspace" "more" {
   count           = 5
   name            = "my-workspace-name-${count.index}"
    environment_id = "env-v0o3e1k06pqib57lv"
  #draft-pr-runs-enabled = true
   auto_apply = true
   deletion_protection_enabled = false
   #agent_pool_id = "apool-v0nv01vdeu2udhnho"
   terraform_version = "latest"
    vcs_provider_id = "vcs-v0o3e1k2d30u6e6jg"
    vcs_repo {
     identifier = "k-kotov/2222"
      branch     = "main"
      #dry_runs_enabled = true
      #ingress_submodules = true

      }
    }


    
