#!/bin/sh

case $1 in

#............................................................ lz-org ...........................................................#

    lz-org)
    cd lz-org/template/

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

    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Plan Initiated, Please wait......!!!!"

    JSON_FILE_1="../input-json-file/folders.tfvars"
    JSON_FILE_2="../input-json-file/projects.tfvars"
    JSON_FILE_3="../input-json-file/policy.tfvars"
    JSON_FILE_4="../input-json-file/budget.tfvars"
    JSON_FILE_5="../input-json-file/api.tfvars"
    JSON_FILE_6="../input-json-file/host-svc.tfvars"

    PLAN_FILE="../plan-file/org-tf-plan.json"
    
    terraform plan \
    -var access_token=$MYTOKEN \
    -var-file=$JSON_FILE_1 \
    -var-file=$JSON_FILE_2 \
    -var-file=$JSON_FILE_3 \
    -var-file=$JSON_FILE_4 \
    -var-file=$JSON_FILE_5 \
    -var-file=$JSON_FILE_6 \
    -out=$PLAN_FILE

    echo -e "\n"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Terraform Apply is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting changed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        terraform apply $PLAN_FILE
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"

        read -p "You have changed your code repository. Do you want to push these changes to remote repo ? y or n: " ans
        echo -e "Answer: $ans"
        if [ $ans == "y" ]
        then
            
            cd ../../
            git add .
            read -p "Please provide comment for this commit (what you added/changed ?) : " comment
            echo -e "$Comment: $comment"
            git commit -m "$comment"
            git push origin master

            echo -e "....Master branch has been updated.....!!!"
            echo -e "----------------------------------------------------------------------------------------------------------"

        else 
            echo -e "Answer is 'n', Hence, push code changes cancel."
        fi


    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;

#............................................................ lz-vpc ............................................................#

    lz-vpc)
    cd lz-vpc/template/

    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID

    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-vpc-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)

    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Plan Initiated, Please wait......!!!!"

    JSON_FILE_1="../input-json-file/vpc.tfvars"
    JSON_FILE_2="../input-json-file/subnet.tfvars"
    JSON_FILE_3="../input-json-file/firewall.tfvars"
    JSON_FILE_4="../input-json-file/peering.tfvars"
    PLAN_FILE="../plan-file/vpc-tf-plan.json"
    
    terraform plan \
    -var access_token=$MYTOKEN \
    -var="project_id=$PROJECT_ID" \
    -var-file=$JSON_FILE_1 \
    -var-file=$JSON_FILE_2 \
    -var-file=$JSON_FILE_3 \
    -var-file=$JSON_FILE_4 \
    -out=$PLAN_FILE

    echo -e "\n"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Terraform Apply is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting changed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        terraform apply $PLAN_FILE
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"

        read -p "You have changed your code repository. Do you want to push these changes to remote repo ? y or n: " ans
        echo -e "Answer: $ans"
        if [ $ans == "y" ]
        then
            
            cd ../../
            git add .
            read -p "Please provide comment for this commit (what you added/changed ?) : " comment
            echo -e "$Comment: $comment"
            git commit -m "$comment"
            git push origin master

            echo -e "....Master branch has been updated.....!!!"
            echo -e "----------------------------------------------------------------------------------------------------------"

        else 
            echo -e "Answer is 'n', Hence, push code changes cancel."
        fi


    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;


#.............................................................. lz-nat ..........................................................#

    lz-nat)
    cd lz-nat/template/

    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID

    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-nat-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)

    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Plan Initiated, Please wait......!!!!"

    JSON_FILE_1="../input-json-file/router.tfvars"
    JSON_FILE_2="../input-json-file/nat.tfvars"
    PLAN_FILE="../plan-file/nat-tf-plan.json"
    
    terraform plan \
    -var access_token=$MYTOKEN \
    -var-file=$JSON_FILE_1 \
    -var-file=$JSON_FILE_2 \
    -out=$PLAN_FILE

    echo -e "\n"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Terraform Apply is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting changed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        terraform apply $PLAN_FILE
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"

        read -p "You have changed your code repository. Do you want to push these changes to remote repo ? y or n: " ans
        echo -e "Answer: $ans"
        if [ $ans == "y" ]
        then
            
            cd ../../
            git add .
            read -p "Please provide comment for this commit (what you added/changed ?) : " comment
            echo -e "$Comment: $comment"
            git commit -m "$comment"
            git push origin master

            echo -e "....Master branch has been updated.....!!!"
            echo -e "----------------------------------------------------------------------------------------------------------"

        else 
            echo -e "Answer is 'n', Hence, push code changes cancel."
        fi


    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;


#.............................................................. lz-psc ..........................................................#

    lz-psc)
    cd lz-psc/template/

    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID

    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-psc-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)

    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Plan Initiated, Please wait......!!!!"

    JSON_FILE_1="../input-json-file/psc.tfvars"
    JSON_FILE_2="../input-json-file/address.tfvars"
    PLAN_FILE="../plan-file/psc-tf-plan.json"
    
    terraform plan \
    -var access_token=$MYTOKEN \
    -var-file=$JSON_FILE_1 \
    -var-file=$JSON_FILE_2 \
    -out=$PLAN_FILE

    echo -e "\n"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Terraform Apply is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting changed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        terraform apply $PLAN_FILE
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"

        read -p "You have changed your code repository. Do you want to push these changes to remote repo ? y or n: " ans
        echo -e "Answer: $ans"
        if [ $ans == "y" ]
        then
            
            cd ../../
            git add .
            read -p "Please provide comment for this commit (what you added/changed ?) : " comment
            echo -e "$Comment: $comment"
            git commit -m "$comment"
            git push origin master

            echo -e "....Master branch has been updated.....!!!"
            echo -e "----------------------------------------------------------------------------------------------------------"

        else 
            echo -e "Answer is 'n', Hence, push code changes cancel."
        fi


    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;


#.............................................................. lz-vm ...........................................................#

    lz-vm)
    cd lz-vm/template/

    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID

    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-vm-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)

    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Plan Initiated, Please wait......!!!!"

    JSON_FILE="../input-json-file/vm.tfvars.json"
    PLAN_FILE="../plan-file/vm-tf-plan.json"
    
    terraform plan -var access_token=$MYTOKEN -var-file=$JSON_FILE -out=$PLAN_FILE

    echo -e "\n"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Terraform Apply is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting changed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        terraform apply $PLAN_FILE
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"

        read -p "You have changed your code repository. Do you want to push these changes to remote repo ? y or n: " ans
        echo -e "Answer: $ans"
        if [ $ans == "y" ]
        then
            
            cd ../../
            git add .
            read -p "Please provide comment for this commit (what you added/changed ?) : " comment
            echo -e "$Comment: $comment"
            git commit -m "$comment"
            git push origin master

            echo -e "....Master branch has been updated.....!!!"
            echo -e "----------------------------------------------------------------------------------------------------------"

        else 
            echo -e "Answer is 'n', Hence, push code changes cancel."
        fi


    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;


#.............................................................. lz-nlb ..........................................................#

    lz-nlb)
    cd lz-nlb/template/

    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID

    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-nlb-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)

    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Plan Initiated, Please wait......!!!!"

    JSON_FILE_1="../input-json-file/target_pool.tfvars.json"
    JSON_FILE_2="../input-json-file/health_check.tfvars.json"
    JSON_FILE_3="../input-json-file/nlb.tfvars.json"
    PLAN_FILE="../plan-file/nlb-tf-plan.json"
    
    terraform plan \
    -var access_token=$MYTOKEN \
    -var-file=$JSON_FILE_1 \
    -var-file=$JSON_FILE_2 \
    -var-file=$JSON_FILE_3 \
    -out=$PLAN_FILE

    echo -e "\n"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Terraform Apply is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting changed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        terraform apply $PLAN_FILE
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"

        read -p "You have changed your code repository. Do you want to push these changes to remote repo ? y or n: " ans
        echo -e "Answer: $ans"
        if [ $ans == "y" ]
        then
            
            cd ../../
            git add .
            read -p "Please provide comment for this commit (what you added/changed ?) : " comment
            echo -e "$Comment: $comment"
            git commit -m "$comment"
            git push origin master

            echo -e "....Master branch has been updated.....!!!"
            echo -e "----------------------------------------------------------------------------------------------------------"

        else 
            echo -e "Answer is 'n', Hence, push code changes cancel."
        fi


    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;

#.............................................................. lz-alb ..........................................................#

    lz-alb)
    cd lz-alb/template/

    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID

    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-alb-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)

    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Plan Initiated, Please wait......!!!!"

    JSON_FILE_1="../input-json-file/bucket.tfvars.json"
    JSON_FILE_2="../input-json-file/ssl.tfvars.json"
    JSON_FILE_3="../input-json-file/armor.tfvars.json"
    JSON_FILE_4="../input-json-file/alb.tfvars.json"
    PLAN_FILE="../plan-file/alb-tf-plan.json"
    
    terraform plan \
    -var access_token=$MYTOKEN \
    -var-file=$JSON_FILE_1 \
    -var-file=$JSON_FILE_2 \
    -var-file=$JSON_FILE_3 \
    -var-file=$JSON_FILE_4 \
    -out=$PLAN_FILE

    echo -e "\n"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Terraform Apply is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting changed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        terraform apply $PLAN_FILE
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"

        read -p "You have changed your code repository. Do you want to push these changes to remote repo ? y or n: " ans
        echo -e "Answer: $ans"
        if [ $ans == "y" ]
        then
            
            cd ../../
            git add .
            read -p "Please provide comment for this commit (what you added/changed ?) : " comment
            echo -e "$Comment: $comment"
            git commit -m "$comment"
            git push origin master

            echo -e "....Master branch has been updated.....!!!"
            echo -e "----------------------------------------------------------------------------------------------------------"

        else 
            echo -e "Answer is 'n', Hence, push code changes cancel."
        fi


    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;

#.............................................................. lz-iam ..........................................................#

    lz-iam)
    cd lz-iam/template/

    PROJECT_ID="my-project-44513-422004"
    gcloud config set project $PROJECT_ID

    export TF_LOG=INFO 
    export TF_LOG_PATH="../log-file/lz-iam-$(date +"%d-%m-%Y_%H:%M").log"
   
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Initialization Started, Please wait......!!!!"
    terraform init -upgrade
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Generating Oauth Access Token..!!!!"
    export MYTOKEN=$(gcloud auth print-access-token)

    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "Terraform Plan Initiated, Please wait......!!!!"

    JSON_FILE="../input-json-file/iam.tfvars.json"
    PLAN_FILE="../plan-file/iam-tf-plan.json"
    
    terraform plan -var access_token=$MYTOKEN -var-file=$JSON_FILE -out=$PLAN_FILE

    echo -e "\n"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"

    echo -e "Terraform Apply is going to start, Please wait......!!!!"
    echo -e "\n"
    read -p "Your infrastructure is getting changed. Are you Sure ? y or n: " ans
    echo -e "Answer: $ans"
    if [ $ans == "y" ]
    then
        terraform apply $PLAN_FILE
        echo -e "----------------------------------------------------------------------------------------------------------"
        echo -e "----------------------------------------------------------------------------------------------------------"

        read -p "You have changed your code repository. Do you want to push these changes to remote repo ? y or n: " ans
        echo -e "Answer: $ans"
        if [ $ans == "y" ]
        then
            
            cd ../../
            git add .
            read -p "Please provide comment for this commit (what you added/changed ?) : " comment
            echo -e "$Comment: $comment"
            git commit -m "$comment"
            git push origin master

            echo -e "....Master branch has been updated.....!!!"
            echo -e "----------------------------------------------------------------------------------------------------------"

        else 
            echo -e "Answer is 'n', Hence, push code changes cancel."
        fi


    else
        echo -e "Answer is 'n', Hence, exiting."
    fi
    ;;
*)
echo "ERROR :: Handler Baseline $1 is invalid"
exit 1
;;
esac
