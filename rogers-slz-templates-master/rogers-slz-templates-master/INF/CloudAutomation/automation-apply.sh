#!/bin/sh

#***************** Project Import **********************#
: '
MODULE='module.project'
RESOURCE='google_project.project'
RESOURCE_ID='gcp-prj-inf-automation-prd-01'
'

#******************** Repo Import **********************#
: '
MODULE='module.repo'
RESOURCE='google_sourcerepo_repository.repo'
RESOURCE_ID='gcp-yyz-prd-inf-cloudautomation-modules-srep-01'
'
: '
MODULE='module.repo'
RESOURCE='google_sourcerepo_repository.repo'
RESOURCE_ID='gcp-yyz-prd-inf-cloudautomation-templates-srep-01'
'
#******************** Bucket Import ********************#
: '
MODULE='module.bucket'
RESOURCE='google_storage_bucket.bucket'
RESOURCE_ID='gcp-yyz-prd-inf-cloudautomation-sbuc-01'
'
#********************** SA Import **********************#
: '
MODULE='module.sa'
RESOURCE='google_service_account.account'
PROJECT_ID='gcp-prj-inf-automation-prd-01'
RESOURCE_ID='svc-cloudautomation'
'

#********************* Role Import *********************#
: '
MODULE='module.role'
RESOURCE='google_organization_iam_custom_role.role'
ORG_ID='179572310621'
RESOURCE_ID='inf_automation_crl_role_01'
'

#********************* API Import **********************#
: '
MODULE='module.apis'
RESOURCE='google_project_service.gcp_apis'
RESOURCE_ID='gcp-prj-inf-automation-prd-01'
API='iam.googleapis.com'
'

PROJECT_ID='gcp-prj-inf-automation-prd-01'
SA="svc-cloudautomation@gcp-prj-inf-automation-prd-01.iam.gserviceaccount.com"
TFVARS_FILE_1='../input-file/project.tfvars'
TFVARS_FILE_2='../input-file/budget.tfvars'
TFVARS_FILE_3='../input-file/api.tfvars'
TFVARS_FILE_4='../input-file/bucket.tfvars'
TFVARS_FILE_5='../input-file/repo.tfvars'
TFVARS_FILE_6='../input-file/sa.tfvars'
TFVARS_FILE_7='../input-file/role.tfvars'

PLAN_FILE='../plan-file/automation-tf-plan.json'

TF_HANDLER='automation'
TF_FILES_LOCATION='template'
TF_GCS='gcp-yyz-prd-inf-cloudautomation-sbuc-01'
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

export MYTOKEN=$(gcloud auth print-access-token --impersonate-service-account=$SA)

echo -e "\n"

echo "************************ Terraform Init *************************"

export TF_LOG=${TF_LOG}
export TF_LOG_PATH=../${TF_LOG_FOLDER}/${TF_APPLY_LOG_FOLDER}/${TF_HANDLER}-$(date +"%d-%m-%Y_%H:%M").log

terraform init -upgrade -backend-config=bucket=${TF_GCS} -backend-config=prefix="${TF_HANDLER}/${TF_STATE_FOLDER}"
echo -e "----------------------------------------------------------------------------------------------------------"
echo -e "----------------------------------------------------------------------------------------------------------"
echo -e "\n"

: '
echo "***************** Terraform Project Import **********************"
terraform import \
-var="access_token=$MYTOKEN" \
-var="project_id=${PROJECT_ID}" \
-var-file=${TFVARS_FILE_1} \
-var-file=${TFVARS_FILE_2} \
-var-file=${TFVARS_FILE_3} \
-var-file=${TFVARS_FILE_4} \
-var-file=${TFVARS_FILE_5} \
-var-file=${TFVARS_FILE_6} \
-var-file=${TFVARS_FILE_7} \
"$MODULE[\"$RESOURCE_ID\"].$RESOURCE" "$RESOURCE_ID"
'

: '
echo "******************* Terraform Repo Import ***********************"
terraform import \
-var="access_token=$MYTOKEN" \
-var="project_id=${PROJECT_ID}" \
-var-file=${TFVARS_FILE_1} \
-var-file=${TFVARS_FILE_2} \
-var-file=${TFVARS_FILE_3} \
-var-file=${TFVARS_FILE_4} \
-var-file=${TFVARS_FILE_5} \
-var-file=${TFVARS_FILE_6} \
-var-file=${TFVARS_FILE_7} \
"$MODULE[\"$RESOURCE_ID\"].$RESOURCE" "$RESOURCE_ID"
'

: '
echo "****************** Terraform Bucket Import **********************"
terraform import \
-var="access_token=$MYTOKEN" \
-var="project_id=${PROJECT_ID}" \
-var-file=${TFVARS_FILE_1} \
-var-file=${TFVARS_FILE_2} \
-var-file=${TFVARS_FILE_3} \
-var-file=${TFVARS_FILE_4} \
-var-file=${TFVARS_FILE_5} \
-var-file=${TFVARS_FILE_6} \
-var-file=${TFVARS_FILE_7} \
"$MODULE[\"$RESOURCE_ID\"].$RESOURCE" "$RESOURCE_ID"
'

: '
echo "******************** Terraform SA Import ************************"
terraform import \
-var="access_token=$MYTOKEN" \
-var="project_id=${PROJECT_ID}" \
-var-file=${TFVARS_FILE_1} \
-var-file=${TFVARS_FILE_2} \
-var-file=${TFVARS_FILE_3} \
-var-file=${TFVARS_FILE_4} \
-var-file=${TFVARS_FILE_5} \
-var-file=${TFVARS_FILE_6} \
-var-file=${TFVARS_FILE_7} \
"$MODULE[\"$RESOURCE_ID\"].$RESOURCE" "projects/$PROJECT_ID/serviceAccounts/$RESOURCE_ID@$PROJECT_ID.iam.gserviceaccount.com"
'

: '
echo "*************** Terraform Custom Role Import ********************"
terraform import \
-var="access_token=$MYTOKEN" \
-var="project_id=${PROJECT_ID}" \
-var-file=${TFVARS_FILE_1} \
-var-file=${TFVARS_FILE_2} \
-var-file=${TFVARS_FILE_3} \
-var-file=${TFVARS_FILE_4} \
-var-file=${TFVARS_FILE_5} \
-var-file=${TFVARS_FILE_6} \
-var-file=${TFVARS_FILE_7} \
"$MODULE[\"$RESOURCE_ID\"].$RESOURCE" "organizations/$ORG_ID/roles/$RESOURCE_ID"
'

: '
echo "******************** Terraform API Import ***********************"
terraform import \
-var="access_token=$MYTOKEN" \
-var="project_id=${PROJECT_ID}" \
-var-file=${TFVARS_FILE_1} \
-var-file=${TFVARS_FILE_2} \
-var-file=${TFVARS_FILE_3} \
-var-file=${TFVARS_FILE_4} \
-var-file=${TFVARS_FILE_5} \
-var-file=${TFVARS_FILE_6} \
-var-file=${TFVARS_FILE_7} \
"$MODULE[\"$RESOURCE_ID\"].$RESOURCE[\"$API\"]" "$RESOURCE_ID/$API"
'


echo "********************** Terraform Plan ***************************"
terraform plan \
-var="access_token=$MYTOKEN" \
-var="project_id=${PROJECT_ID}" \
-var-file=${TFVARS_FILE_1} \
-var-file=${TFVARS_FILE_2} \
-var-file=${TFVARS_FILE_3} \
-var-file=${TFVARS_FILE_4} \
-var-file=${TFVARS_FILE_5} \
-var-file=${TFVARS_FILE_6} \
-var-file=${TFVARS_FILE_7} \
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