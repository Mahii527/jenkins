#my_ip_url                           = "http://api.ipify.org"
#admin_acl                           = ["${data.http.my_ip.body}/32"]

image_project                       = "fortigcp-project-001"
#image_family                        = "fortigate-64-payg"
image_name                          = "fortinet-fgtondemand-6415-20240208-001-w-license"

fgt_project_id                      = "gcp-prj-inf-networkhub-prd-1"
region                              = "northamerica-northeast2"
subnets                             = [
                                        "gcp-vpc-prd-out-fw-1-yyz-inf-pub-tier-01",
                                        "gcp-vpc-prd-hub-shr-1-yyz-inf-shr-cmn-prv-tier-01",
                                        "gcp-vpc-prd-ha-fw-1-yyz-inf-prv-tier-01",
                                        "gcp-vpc-prd-mgmt-fw-1-yyz-inf-prv-tier-01"
                                      ]

ilb_ip                              = "gcp-yyz-fgt-ilb-priv-ip-01"

pub_ips                             = [
                                        "gcp-yyz-fgt-out-priv-ip-01",
                                        "gcp-yyz-fgt-out-priv-ip-02",
                                      ]

priv_ips                            = [
                                        "gcp-yyz-fgt-int-priv-ip-01",
                                        "gcp-yyz-fgt-int-priv-ip-02",
                                      ]

hasync_ips                          = [
                                        "gcp-yyz-fgt-ha-priv-ip-01",
                                        "gcp-yyz-fgt-ha-priv-ip-02",
                                      ]

mgmt_ips                            = [
                                        "gcp-yyz-fgt-mgmt-priv-ip-01",
                                        "gcp-yyz-fgt-mgmt-priv-ip-02",
                                      ]