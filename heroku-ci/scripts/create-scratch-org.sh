#!/bin/bash
export PATH="$BUILD_DIR/vendor/sfdx/cli/bin:$PATH"
export PATH="$BUILD_DIR/vendor/sfdx/jq:$PATH"

# Decrypt server.key. Used for JWT authorization.
openssl aes-256-cbc -k $ENC_KEY -in $CI_ASSET_DIR/server.key.enc -out $CI_ASSET_DIR/server.key -d

# Authenticate 
sfdx force:auth:jwt:grant --clientid $SF_CLIENT_ID --jwtkeyfile $CI_ASSET_DIR/server.key -u $SF_USERNAME 


echo "Creating scratch org..."
sfdx force:org:create --definitionfile $CI_ASSET_DIR/project-scratch-def.json --targetdevhubusername $SF_USERNAME

# Configure environment variables used in testing.
ORG_JSON=$(sfdx force:org:display --json)
export SALESFORCE_ACCESS_TOKEN=$(echo $ORG_JSON | jq -r '.result.accessToken')
export SALESFORCE_INSTANCE_URL=$(echo $ORG_JSON | jq -r '.result.instanceUrl')
export SALESFORCE_ORG_ID=$(echo $ORG_JSON | jq -r '.result.id')
export SALESFORCE_USERNAME=$(echo $ORG_JSON | jq -r '.result.username')

# Delete the unencrypted key.
rm $CI_ASSET_DIR/server.key
# Optional: deploy metadata required by tests
sfdx force:mdapi:deploy -d test_org/unpackaged --wait 1 -u $SALESFORCE_USERNAME