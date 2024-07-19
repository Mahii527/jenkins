firewall = [
  {
    project_id   = "peak-comfort-413811"
    network_name = "qa-host-shared-vpc"
    rules        = [
      {
        name                     = "qa-host-fw-ingress-iap-allow"
        description              = "IAP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["35.235.240.0/20"]
        source_tags              = []
        source_service_accounts = null
        target_tags              = []
        target_service_accounts = null
        allow = [
          {
            protocol = "tcp"
            ports    = ["22", "3389"]
          }
        ]
        deny = []
        log_config = {
          metadata = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "qa-host-fw-ingress-icmp-allow"
        description              = "ICMP Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["10.10.1.0/25", "10.10.5.0/26", "10.10.2.0/26", "10.10.3.0/26", "10.11.0.0/24", "10.12.0.0/16", "10.13.0.0/20", "10.10.4.0/24"]
        source_tags              = []
        source_service_accounts = null
        target_tags              = []
        target_service_accounts = null
        allow = [
          {
            protocol = "icmp"
            ports    = []
          }
        ]
        deny = []
        log_config = {
          metadata = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "qa-host-fw-ingress-health-check-allow"
        description              = "Health Check Ingress Firewall rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["130.211.0.0/22", "35.191.0.0/16", "209.85.152.0/22", "209.85.204.0/22"]
        source_tags              = []
        source_service_accounts = null
        target_tags              = ["http-server", "https-server"]
        target_service_accounts = null
        allow = [
          {
            protocol = "tcp"
            ports    = ["80", "443", "8080"]
          }
        ]
        deny = []
        log_config = {
          metadata = "INCLUDE_ALL_METADATA"
        }
      },
      {
        name                     = "qa-host-fw-ingress-mqtt-allow"
        description              = "MQTT Ingress Firewall allow rule"
        direction                = "INGRESS"
        priority                 = 1000
        ranges                   = ["0.0.0.0/0"]
        source_tags              = []
        source_service_accounts = null
        target_tags              = ["mqtt"]
        target_service_accounts = null
        allow = [
          {
            protocol = "udp"
            ports    = ["1883"]
          }
        ]
        deny = []
        log_config = {
          metadata = "INCLUDE_ALL_METADATA"
        }
      },
    ]
  },
]