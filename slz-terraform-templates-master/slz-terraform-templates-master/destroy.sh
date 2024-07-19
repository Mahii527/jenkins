#!/bin/sh


case $1 in

#............................................................ lz-org ...........................................................#

    lz-org)
    cd lz-org/template/

    #........................... Setting up the required project.......................#
    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID
   
    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-org-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)
    echo -e "\n"
    echo -e "Terraform Destroy is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting destroyed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        JSON_FILE_1="../input-json-file/folders.tfvars.json"
        JSON_FILE_2="../input-json-file/projects.tfvars.json"
        JSON_FILE_3="../input-json-file/policy.tfvars.json"
        JSON_FILE_4="../input-json-file/budget.tfvars.json"
        JSON_FILE_5="../input-json-file/api.tfvars.json"
        JSON_FILE_6="../input-json-file/host-svc.tfvars.json"

        terraform destroy \
        -var access_token=$MYTOKEN \
        -var-file=$JSON_FILE_1 \
        -var-file=$JSON_FILE_2 \
        -var-file=$JSON_FILE_3 \
        -var-file=$JSON_FILE_4 \
        -var-file=$JSON_FILE_5 \
        -var-file=$JSON_FILE_6 

        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"
    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;

#............................................................ lz-vpc ...........................................................#

    lz-vpc)
    cd lz-vpc/template/

    #........................... Setting up the required project.......................#
    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID
   
    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-org-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)
    echo -e "\n"
    echo -e "Terraform Destroy is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting destroyed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then

        JSON_FILE_1="../input-json-file/vpc.tfvars"
        JSON_FILE_2="../input-json-file/subnet.tfvars"
        JSON_FILE_3="../input-json-file/firewall.tfvars"
        JSON_FILE_4="../input-json-file/peering.tfvars"

        terraform destroy \
        -var access_token=$MYTOKEN \
        -var="project_id=$PROJECT_ID" \
        -var-file=$JSON_FILE_1 \
        -var-file=$JSON_FILE_2 \
        -var-file=$JSON_FILE_3 \
        -var-file=$JSON_FILE_4 \
        
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"
    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;

#........................................................... lz-subnet .........................................................#

    lz-subnet)
    cd lz-subnet/template/

    #........................... Setting up the required project.......................#
    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID
    
    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-org-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)
    echo -e "\n"
    echo -e "Terraform Destroy is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting destroyed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        JSON_FILE="../input-json-file/subnet.tfvars.json"
        terraform destroy -var access_token=$MYTOKEN -var-file=$JSON_FILE
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"
    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;


#.......................................................... lz-firewall ........................................................#

    lz-firewall)
    cd lz-firewall/template/

    #........................... Setting up the required project.......................#
    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID
    
    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-org-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)
    echo -e "\n"
    echo -e "Terraform Destroy is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting destroyed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        JSON_FILE="../input-json-file/firewall.tfvars.json"
        terraform destroy -var access_token=$MYTOKEN -var-file=$JSON_FILE
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"
    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;


#............................................................ lz-nat ...........................................................#

    lz-nat)
    cd lz-nat/template/

    #........................... Setting up the required project.......................#
    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID
   
    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-org-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)
    echo -e "\n"
    echo -e "Terraform Destroy is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting destroyed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        JSON_FILE_1="../input-json-file/router.tfvars.json"
        JSON_FILE_2="../input-json-file/nat.tfvars.json"
        
        terraform destroy \
        -var access_token=$MYTOKEN \
        -var-file=$JSON_FILE_1 \
        -var-file=$JSON_FILE_2

        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"
    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;


#............................................................ lz-psc ...........................................................#

    lz-psc)
    cd lz-psc/template/

    #........................... Setting up the required project.......................#
    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID
   
    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-org-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)
    echo -e "\n"
    echo -e "Terraform Destroy is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting destroyed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        JSON_FILE_1="../input-json-file/psc.tfvars.json"
        JSON_FILE_2="../input-json-file/address.tfvars.json"
        
        terraform destroy \
        -var access_token=$MYTOKEN \
        -var-file=$JSON_FILE_1 \
        -var-file=$JSON_FILE_2 
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"
    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;


#............................................................ lz-vm ............................................................#

    lz-vm)
    cd lz-vm/template/

    #........................... Setting up the required project.......................#
    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID
   
    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-org-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)
    echo -e "\n"
    echo -e "Terraform Destroy is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting destroyed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        JSON_FILE="../input-json-file/vm.tfvars.json"
        terraform destroy -var access_token=$MYTOKEN -var-file=$JSON_FILE
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"
    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;


#............................................................ lz-nlb ...........................................................#

    lz-nlb)
    cd lz-nlb/template/

    #........................... Setting up the required project.......................#
    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID
   
    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-org-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)
    echo -e "\n"
    echo -e "Terraform Destroy is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting destroyed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        JSON_FILE_1="../input-json-file/target_pool.tfvars.json"
        JSON_FILE_2="../input-json-file/health_check.tfvars.json"
        JSON_FILE_3="../input-json-file/nlb.tfvars.json"
        terraform destroy \
        -var access_token=$MYTOKEN \
        -var-file=$JSON_FILE_1 \
        -var-file=$JSON_FILE_2 \
        -var-file=$JSON_FILE_3
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"
    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;


#............................................................ lz-alb ...........................................................#

    lz-alb)
    cd lz-alb/template/

    #........................... Setting up the required project.......................#
    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID
   
    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-org-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)
    echo -e "\n"
    echo -e "Terraform Destroy is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting destroyed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        JSON_FILE_1="../input-json-file/bucket.tfvars.json"
        JSON_FILE_2="../input-json-file/ssl.tfvars.json"
        JSON_FILE_3="../input-json-file/armor.tfvars.json"
        JSON_FILE_4="../input-json-file/alb.tfvars.json"
        terraform destroy \
        -var access_token=$MYTOKEN \
        -var-file=$JSON_FILE_1 \
        -var-file=$JSON_FILE_2 \
        -var-file=$JSON_FILE_3 \
        -var-file=$JSON_FILE_4
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"
    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;
*)
echo "ERROR :: Handler Baseline $1 is invalid"
exit 1
;;
esac
