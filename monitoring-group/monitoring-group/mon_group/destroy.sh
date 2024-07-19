#!/bin/sh


case $1 in

#............................................................ lz-org ...........................................................#

    lz-nw-spoke)
    cd lz-group/template/

    #........................... Setting up the required project.......................#
    PROJECT_ID="lz-testing-417613"
    gcloud config set project $PROJECT_ID
   
    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-group-$(date +"%d-%m-%Y_%H:%M").log"
   
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
        JSON_FILE_1="../input-json-file/group.tfvars"

        terraform destroy \
        -var access_token=$MYTOKEN \
        -var-file=$JSON_FILE_1 

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

