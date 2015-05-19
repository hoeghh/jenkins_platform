sudo yum install wget python-pip python-openstackclient  -y
wget https://objects.zetta.io:8443/v1/AUTH_58078b69475b41b4a26b767627fc60b6/docker-machine/docker-machine_linux-amd64

mv docker-machine_linux-amd64 zetta-docker-machine
chmod u+x zetta-docker-machine

echo "Get Standard-openrc.sh file from here: https://dashboard.zetta.io/project/access_and_security/api_access/openrc/"

#sleep 10

export OS_AUTH_URL=https://identity.api.zetta.io/v3
export OS_REGION_NAME="no-osl1"
export OS_PROJECT_ID=bceffc437a324a64ac708205dcad8208
export OS_PROJECT_NAME="Standard"
export OS_PROJECT_DOMAIN_ID="807427196c02496ea86bc65a110472e6"
export OS_USER_DOMAIN_ID="807427196c02496ea86bc65a110472e6"
export OS_IDENTITY_API_VERSION="3"
export OS_USERNAME="praqma"
echo "Please enter your OpenStack Password: "
read -sr OS_PASSWORD_INPUT
export OS_PASSWORD=$OS_PASSWORD_INPUT
export OS_TENANT_NAME=$OS_PROJECT_NAME
export OS_DOMAIN_NAME=praqma
#export OS_DOMAIN_ID=$OS_PROJECT_DOMAIN_ID
