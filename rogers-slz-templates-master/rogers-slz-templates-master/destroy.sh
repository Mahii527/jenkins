#!/bin/sh

RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
CYAN='\033[0;96m'

RED_BOLD='\033[1;31m'
BLUE_BOLD='\033[1;34m'
GREEN_BOLD='\033[1;32m'
CYAN_BOLD='\033[1;96m'

echo -e "\n"
echo -e "${RED_BOLD}Choose a Handler to Destroy:"
echo -e "\n"
echo -e "${CYAN_BOLD}a. Organization: ${BLUE_BOLD}Folders, Host-Service Project Enablement, Organization Polices Constraint"
echo -e "${CYAN_BOLD}b. INF Network Application: ${BLUE_BOLD}Network Projects, Budgets & Alert, VPC, Subnet, Firewall, VPC Peering, Services Enablement"
echo -e "${CYAN_BOLD}c. INF Monitoring Application: ${BLUE_BOLD}Monitoring Project, Budgets & Alert, Monitoring Scope, Services Enablement"
echo -e "${CYAN_BOLD}d. INF Security Application: ${BLUE_BOLD}Security Project, Budgets & Alert, Services Enablement"
echo -e "${CYAN_BOLD}e. INF Billing Application: ${BLUE_BOLD}Billing Project, Budgets & Alert, Services Enablement"
echo -e "${CYAN_BOLD}f. INF Automation Application: ${BLUE_BOLD}Billing Project, Budgets & Alert, Services Enablement, Bucket"
echo -e "${CYAN_BOLD}g. Fortigate Firewall: ${BLUE_BOLD}IP Addresses, Router, NAT, Disks, VMs, Health Check, UMIGs, LB, Secret Manager, Fortigate Firewall Configurations"
echo -e "${CYAN_BOLD}h. Prisma Integration: ${BLUE_BOLD}Service Account, SA Key, Org Custom Role, Iam Permission, Services Enablement"

echo -e "${RED_BOLD}\n"
read -p "Enter your choice (a/b/c/d/e/f/g/h): " OPTION
echo -e "\n"

case $OPTION in

#............................................................ lz-org ...........................................................#

    
    a)
    
    cd Organization/
    sh organization-destroy.sh

    ;;

#............................................................ lz-nw ............................................................#
    
    b)
    
    cd INF/Network/
    sh network-destroy.sh

    ;;
#.............................................................. lz-mon ..........................................................#

    c)
    
    cd INF/Monitoring/
    sh monitoring-destroy.sh

    ;;


#.............................................................. lz-sec ..........................................................#

    d)
    
    cd INF/Security/
    sh security-destroy.sh

    ;;

#.............................................................. lz-bil ..........................................................#

    e)
    
    cd INF/Billing/
    sh billing-destroy.sh

    ;;

#.............................................................. lz-pla ..........................................................#

    f)
    
    cd INF/CloudAutomation/
    sh automation-destroy.sh

    ;;

#.............................................................. lz-fgt ..........................................................#

    g)
    
    cd FGT/
    sh fortigate-destroy.sh

    ;;

#............................................................ lz-prisma .........................................................#

    h)
    
    cd Prisma/
    sh prisma-destroy.sh

    ;;

*)
echo "ERROR :: Handler Baseline $OPTION is invalid"
exit 1
;;
esac
