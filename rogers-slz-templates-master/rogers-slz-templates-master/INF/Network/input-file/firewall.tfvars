firewall                         = {

  # .............. Network HUB Firewall Configuration ............. #
  "gcp-vpc-prd-hub-shr-1"       = {
    delete                       = false
    project_id                   = "gcp-prj-inf-networkhub-prd-1"
    rules                        = [
      {
        name                     = "fw-hub-ingress-allow-22-3389-tcp-01"
        description              = "IAP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["35.235.240.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["22", "3389"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-hub-ingress-allow-icmp-01"
        description              = "ICMP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["10.23.224.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "icmp"
            ports                = []
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-hub-ingress-allow-80-443-8080-tcp-01" 
        description              = "Health Check Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["130.211.0.0/22", "35.191.0.0/16", "209.85.152.0/22", "209.85.204.0/22"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = ["http-server", "https-server"]
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["80", "443", "8080", "8008"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-hub-ingress-allow-fgt-01" 
        description              = "Ingress FGT Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["10.23.224.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = ["fgt"]
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["80", "443", "8080"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-hub-ingress-allow-53-80-389-443-636-8080-01" 
        description              = "Ingress FGT Firewall rule"
        direction                = "INGRESS"
        priority                 = 900
        ranges                   = ["10.23.224.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["53", "80", "389", "443", "636", "8080"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      }
    ]
  }
  # .......... End Network HUB Firewall Configuration ............. #

  # .............. Network HA Firewall Configuration .............. #
  "gcp-vpc-prd-ha-fw-1"       = {
    delete                       = false
    project_id                   = "gcp-prj-inf-networkhub-prd-1"
    rules                        = [
      {
        name                     = "fw-ha-ingress-allow-22-3389-tcp-01"
        description              = "IAP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["35.235.240.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["22", "3389"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-ha-ingress-allow-icmp-01"
        description              = "ICMP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["10.23.224.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "icmp"
            ports                = []
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-ha-ingress-allow-80-443-8080-tcp-01" 
        description              = "Health Check Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["130.211.0.0/22", "35.191.0.0/16", "209.85.152.0/22", "209.85.204.0/22"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = ["http-server", "https-server"]
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["80", "443", "8080"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-ha-ingress-allow-fgt-01" 
        description              = "Ingress FGT Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = []
        source_tags              = ["fgt"]
        source_service_accounts  = null
        target_tags              = ["fgt"]
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "all"
            ports                = []
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      }
    ]
  }
  # .......... End Network HA Firewall Configuration ............. #

  # ............. Network OUT Firewall Configuration ............. #
  "gcp-vpc-prd-out-fw-1"       = {
    delete                       = false
    project_id                   = "gcp-prj-inf-networkhub-prd-1"
    rules                        = [
      {
        name                     = "fw-out-ingress-allow-22-3389-tcp-01"
        description              = "IAP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["35.235.240.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["22", "3389"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-out-ingress-allow-icmp-01"
        description              = "ICMP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["10.23.224.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "icmp"
            ports                = []
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-out-ingress-allow-80-443-8080-tcp-01" 
        description              = "Health Check Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["130.211.0.0/22", "35.191.0.0/16", "209.85.152.0/22", "209.85.204.0/22"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = ["http-server", "https-server"]
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["80", "443", "8080"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-out-ingress-allow-fgt-01" 
        description              = "Ingress FGT Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["10.23.224.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "all"
            ports                = []
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      }
    ]
  }
  # .......... End Network OUT Firewall Configuration ............ #

  # .............. Network MGMT Firewall Configuration ............#
  "gcp-vpc-prd-mgmt-fw-1"       = {
    delete                       = false
    project_id                   = "gcp-prj-inf-networkhub-prd-1"
    rules                        = [
      {
        name                     = "fw-mgmt-ingress-allow-22-3389-tcp-01"
        description              = "IAP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["35.235.240.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["22", "3389"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-mgmt-ingress-allow-icmp-01"
        description              = "ICMP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["10.23.224.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "icmp"
            ports                = []
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-mgmt-ingress-allow-80-443-8080-tcp-01" 
        description              = "Health Check Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["130.211.0.0/22", "35.191.0.0/16", "209.85.152.0/22", "209.85.204.0/22"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = ["http-server", "https-server"]
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["80", "443", "8080"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-mgmt-ingress-allow-fgt-01" 
        description              = "Ingress FGT Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["10.23.224.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = ["fgt"]
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "all"
            ports                = []
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      }
    ]
  }
  # .......... End Network MGMT Firewall Configuration ............ #

  # ........... Network PROD Spoke Firewall Configuration .......... #
  "gcp-vpc-prd-shr-1"     = {
    delete                       = false
    project_id                   = "gcp-prj-inf-networkspk-prd-1"
    rules                        = [
      {
        name                     = "fw-prd-ingress-allow-22-3389-tcp-01"
        description              = "IAP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["35.235.240.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["22", "3389"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-prd-ingress-allow-icmp-01"
        description              = "ICMP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["10.23.224.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "icmp"
            ports                = []
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-prd-ingress-allow-80-443-8080-tcp-01" 
        description              = "Health Check Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["130.211.0.0/22", "35.191.0.0/16", "209.85.152.0/22", "209.85.204.0/22"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = ["http-server", "https-server"]
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["80", "443", "8080"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      }
    ]
  }
  # ........ End Network PROD Spoke Firewall Configuration ......... #


  # ........... Network Dev Spoke Firewall Configuration .......... #
  "gcp-vpc-npe-dev-shr-1"     = {
    delete                       = false
    project_id                   = "gcp-prj-inf-networkspk-dev-1"
    rules                        = [
      {
        name                     = "fw-dev-ingress-allow-22-3389-tcp-01"
        description              = "IAP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["35.235.240.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["22", "3389"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-dev-ingress-allow-icmp-01"
        description              = "ICMP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["10.23.224.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "icmp"
            ports                = []
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-dev-ingress-allow-80-443-8080-tcp-01" 
        description              = "Health Check Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["130.211.0.0/22", "35.191.0.0/16", "209.85.152.0/22", "209.85.204.0/22"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = ["http-server", "https-server"]
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["80", "443", "8080"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      }
    ]
  }
  # ........ End Network Dev Spoke Firewall Configuration ......... #

  # ........... Network QA Spoke Firewall Configuration ........... #
  "gcp-vpc-npe-qa-shr-1"     = {
    delete                       = false
    project_id                   = "gcp-prj-inf-networkspk-qa-1"
    rules                        = [
      {
        name                     = "fw-qa-ingress-allow-22-3389-tcp-01"
        description              = "IAP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["35.235.240.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["22", "3389"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-qa-ingress-allow-icmp-01"
        description              = "ICMP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["10.23.224.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "icmp"
            ports                = []
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-qa-ingress-allow-80-443-8080-tcp-01" 
        description              = "Health Check Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["130.211.0.0/22", "35.191.0.0/16", "209.85.152.0/22", "209.85.204.0/22"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = ["http-server", "https-server"]
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["80", "443", "8080"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      }
    ]
  }
  # ........ End Network QA Spoke Firewall Configuration ......... #

  # ........... Network STG Spoke Firewall Configuration ......... #
  "gcp-vpc-npe-stg-shr-1"     = {
    delete                       = false
    project_id                   = "gcp-prj-inf-networkspk-stg-1"
    rules                        = [
      {
        name                     = "fw-stg-ingress-allow-22-3389-tcp-01"
        description              = "IAP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["35.235.240.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["22", "3389"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-stg-ingress-allow-icmp-01"
        description              = "ICMP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["10.23.224.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "icmp"
            ports                = []
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "fw-stg-ingress-allow-80-443-8080-tcp-01" 
        description              = "Health Check Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["130.211.0.0/22", "35.191.0.0/16", "209.85.152.0/22", "209.85.204.0/22"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = ["http-server", "https-server"]
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["80", "443", "8080"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      }
    ]
  }
  # ........ End Network QA Spoke Firewall Configuration ......... #
}