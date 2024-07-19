/******************************************
  Project policy, allow values (list constraint)
 *****************************************/
resource "google_project_organization_policy" "project_policy_list_allow_values" {

  count   = var.policy == "allow" ? 1 : 0
  project    = var.project_id
  constraint = var.constraint

  list_policy {
    allow {
      values = var.allow
    }
  }
}

/******************************************
  Project policy, deny all (list constraint)
 *****************************************/

resource "google_project_organization_policy" "project_policy_list_deny_all" {

  count   = var.policy == "deny" ? 1 : 0
  project     = var.project_id
  constraint = var.constraint

  list_policy {
    deny {
      all = true
    }
  }
}

/******************************************
  Exclude projects from policy (list constraint)
 *****************************************/
resource "google_project_organization_policy" "project_policy_list_exclude_projects" {
    
  count   = var.policy == "exclude" ? 1 : 0
  project    = var.project_id
  constraint = var.constraint

  restore_policy {
    default = var.default
  }
}