### GET CREDENTIALS FROM CSV FILE
export AWS_ACCESS_KEY_ID=$(sed '2q;d' ../cred/aws/new_user_credentials.csv | awk -F"," '{print $3}')
export AWS_SECRET_ACCESS_KEY=$(sed '2q;d' ../cred/aws/new_user_credentials.csv | awk -F"," '{print $4}')
export AWS_DEFAULT_REGION='eu-north-1'

#echo $AWS_ACCESS_KEY_ID
#echo $AWS_SECRET_ACCESS_KEY_ID

#terraform -chdir=./ec2 init
terraform -chdir=./ec2 plan
