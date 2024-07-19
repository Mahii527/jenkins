role                           = {
  "inf_automation_crl_role_01" = {
    delete                     = false
    org_id                     = "179572310621"
    title                      = "inf-automation-crl-role-01"
    permissions                = [
      "billing.resourcebudgets.read",
      "billing.resourcebudgets.write",
      "compute.addresses.get",
      "compute.addresses.list",
      "compute.firewalls.get",
      "compute.firewalls.list",
      "compute.networks.get",
      "compute.networks.list",
      "compute.networks.use",
      "compute.organizations.disableXpnHost",
      "compute.organizations.disableXpnResource",
      "compute.organizations.enableXpnHost",
      "compute.organizations.enableXpnResource",
      "compute.regions.get",
      "compute.regions.list",
      "compute.subnetworks.get",
      "compute.subnetworks.list",
      "compute.subnetworks.use",
      "compute.zones.get",
      "compute.zones.list",
      "iam.serviceAccounts.actAs",
      "iam.serviceAccounts.get",
      "iam.serviceAccounts.list",
      "monitoring.notificationChannelDescriptors.get",
      "monitoring.notificationChannelDescriptors.list",
      "monitoring.notificationChannels.create",
      "monitoring.notificationChannels.delete",
      "monitoring.notificationChannels.get",
      "monitoring.notificationChannels.list",
      "monitoring.notificationChannels.sendVerificationCode",
      "monitoring.notificationChannels.update",
      "monitoring.notificationChannels.verify",
      "resourcemanager.folders.create",
      "resourcemanager.folders.get",
      "resourcemanager.organizations.get",
      "resourcemanager.projects.create",
      "resourcemanager.projects.get",
      "resourcemanager.projects.getIamPolicy",
      "resourcemanager.projects.list",
      "resourcemanager.projects.move",
      "resourcemanager.projects.update",
      "serviceusage.services.use",
      "source.repos.get",
      "storage.buckets.get",
      "storage.objects.get",
      "iam.roles.create",
      "iam.roles.get",
      "iam.roles.list",
      "iam.roles.update",
      "serviceusage.services.get",
      "serviceusage.services.list"
    ]
    stage                      = "ALPHA"
    description                = "Custom Role for Secure Landing Zone Build. Created on: 2024-03-29"
  }
}