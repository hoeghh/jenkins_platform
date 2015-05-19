
#!/bin/bash

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
