#!/bin/sh

PROJECT_ID='my-project-amit1-415215'
JSON_FILE_1='../input-file/folder.tfvars'
JSON_FILE_2='../input-file/project.tfvars'
JSON_FILE_3='../input-file/policy.tfvars'
JSON_FILE_4='../input-file/budget.tfvars'
JSON_FILE_5='../input-file/api.tfvars'
JSON_FILE_6='../input-file/host-svc.tfvars'

PLAN_FILE='../plan-file/org-tf-plan.json'

TF_HANDLER='lz-org'
TF_FILES_LOCATION='template'
TF_GCS='lz-tf-test'
TF_STATE_FOLDER='state-file'
TF_OUTPUT_FOLDER='output-file'
TF_LOG_FOLDER='log-file'
TF_APPLY_LOG_FOLDER='apply'
TF_LOG='INFO'

echo -e "\n"

echo "*************** Switching to TF Files Location ******************"

cd ${TF_FILES_LOCATION}/
echo -e "${TF_FILES_LOCATION}/"

echo -e "\n"

echo "*************** Setting up default project **********************"

echo -e "$PROJECT_ID"
gcloud config set project $PROJECT_ID

echo -e "----------------------------------------------------------------------------------------------------------"
echo -e "----------------------------------------------------------------------------------------------------------"
echo -e "\n"

echo "*************** Generating Oauth Access Token *******************"

export MYTOKEN=$(gcloud auth print-access-token)

echo -e "\n"

echo "************************ Terraform Init *************************"

export TF_LOG=${TF_LOG}
export TF_LOG_PATH=../${TF_LOG_FOLDER}/${TF_APPLY_LOG_FOLDER}/${TF_HANDLER}-$(date +"%d-%m-%Y_%H:%M").log

terraform init -upgrade -backend-config=bucket=${TF_GCS} -backend-config=prefix="${TF_HANDLER}/${TF_STATE_FOLDER}"
echo -e "----------------------------------------------------------------------------------------------------------"
echo -e "----------------------------------------------------------------------------------------------------------"
echo -e "\n"

echo "********************** Terraform Plan ***************************"

terraform plan \
-var="access_token=$(gcloud auth print-access-token)" \
-var="project_id=${PROJECT_ID}" \
-var-file=${JSON_FILE_1} \
-var-file=${JSON_FILE_2} \
-var-file=${JSON_FILE_3} \
-var-file=${JSON_FILE_4} \
-var-file=${JSON_FILE_5} \
-var-file=${JSON_FILE_6} \
-out=${PLAN_FILE}

echo -e "\n"
echo -e "----------------------------------------------------------------------------------------------------------"
echo -e "----------------------------------------------------------------------------------------------------------"
echo -e "\n"

echo "********************** Terraform Apply **************************"
echo -e "\n"
read -p "Your infrastructure is getting changed. Are you Sure ? y or n: " ans
echo -e "Answer: $ans"
if [ $ans == "y" ]
then
    terraform apply $PLAN_FILE
    echo -e "------------------------------------------------------------------------------------------------------"
    echo -e "------------------------------------------------------------------------------------------------------"

    echo -e "\n"

    echo "************* Saving terraform output file to gcs ***************"
    echo -e "\n"

    terraform output -json > ../${TF_OUTPUT_FOLDER}/${TF_HANDLER}-$(date +"%d-%m-%Y_%H:%M")-output.json

    gsutil cp ../${TF_OUTPUT_FOLDER}/*-output.json gs://${TF_GCS}/${TF_HANDLER}/${TF_OUTPUT_FOLDER}/

    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "----------------------------------------------------------------------------------------------------------"
    echo -e "\n"

    echo "*************** Saving terraform log file to gcs ****************"
    echo -e "\n"

    gsutil cp ../${TF_LOG_FOLDER}/${TF_APPLY_LOG_FOLDER}/*.log gs://${TF_GCS}/${TF_HANDLER}/${TF_LOG_FOLDER}/${TF_APPLY_LOG_FOLDER}/
else
    echo -e "Answer is 'n', Hence, exiting."
fi