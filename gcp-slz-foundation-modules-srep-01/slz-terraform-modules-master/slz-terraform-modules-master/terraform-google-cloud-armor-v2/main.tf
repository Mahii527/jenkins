resource "google_compute_security_policy" "policy" {
  project                           = var.project_id
  type                              = var.security_policy_type
  name                              = var.security_policy_name
  description                       = var.security_policy_description
  

  /* advanced_options_config {
    log_level                       = var.security_policy_log_level
    json_parsing                    = var.security_policy_json_parsing
  } */
    
# --------------------------------- 
# Default rules
# --------------------------------- 
    dynamic "rule" {
        for_each                    = var.security_policy_default_rules
        content {
            action                  = rule.value.action
            priority                = rule.value.priority
            description             = rule.value.description
            preview                 = rule.value.preview
            match {
                versioned_expr      = rule.value.versioned_expr
                config {
                    src_ip_ranges   = rule.value.src_ip_ranges
                }
            }
        }  
    }
    
# --------------------------------- 
# Throttling traffic rules
# --------------------------------- 
    dynamic "rule" {
        for_each                    = var.security_policy_throttle_rules
        content {
            action                  = rule.value.action
            priority                = rule.value.priority
            description             = rule.value.description
            preview                 = rule.value.preview
            match {
                versioned_expr      = rule.value.versioned_expr
                config {
                    src_ip_ranges   = rule.value.src_ip_ranges
                }
            }
            rate_limit_options {
                conform_action      = rule.value.conform_action
                exceed_action       = rule.value.exceed_action
                enforce_on_key      = rule.value.enforce_on_key
                rate_limit_threshold {
                    count           = rule.value.rate_limit_threshold_count
                    interval_sec    = rule.value.rate_limit_threshold_interval_sec
                }
            } 
        }
    }

# --------------------------------- 
# Country limitation
# --------------------------------- 
    dynamic "rule" {
        for_each                    = var.security_policy_countries_rules
        content {
            action                  = rule.value.action
            priority                = rule.value.priority
            description             = rule.value.description
            preview                 = rule.value.preview
            match {
                expr {
                    expression      = rule.value.expression
                }
            }
        }
    }

# --------------------------------- 
# OWASP rules
# --------------------------------- 
    dynamic "rule" {
        for_each                    = var.security_policy_owasp_rules
        content {
            action                  = rule.value.action
            priority                = rule.value.priority
            description             = rule.value.description
            preview                 = rule.value.preview
            match {
                expr {
                    expression      = rule.value.expression
                }
            }
        }
    }

# --------------------------------- 
# Custom Log4j rule
# --------------------------------- 
    dynamic "rule" {
        for_each                    = var.security_policy_cves_and_vulnerabilities_rules
        content {
            action                  = rule.value.action
            priority                = rule.value.priority
            description             = rule.value.description
            preview                 = rule.value.preview
            match {
                expr {
                    expression      = rule.value.expression
                }
            }
        }
    }
}