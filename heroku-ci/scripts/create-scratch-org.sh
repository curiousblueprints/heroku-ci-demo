#!/bin/bash
#create-scratch-org.sh
export PATH="$BUILD_DIR/vendor/sfdx/cli/bin:$PATH"
export PATH="$BUILD_DIR/vendor/sfdx/jq:$PATH"

ls vendor/sfdx/jq
ls vendor/sfdx

# Decrypt server.key. Used for JWT authorization.
openssl aes-256-cbc -k $ENC_KEY -in $CI_ASSET_DIR/server.key.enc -out $CI_ASSET_DIR/server.key -d

# Authenticate 
sfdx force:auth:jwt:grant --clientid $SF_CLIENT_ID --jwtkeyfile $CI_ASSET_DIR/server.key -u $SF_USERNAME 


echo "Creating scratch org..."
export SALESFORCE_USERNAME=$(sfdx force:org:create --definitionfile $CI_ASSET_DIR/project-scratch-def.json --targetdevhubusername $SF_USERNAME --json | jq -r '.result.username')

# Delete the unencrypted key.
rm $CI_ASSET_DIR/server.key

# Optional: deploy metadata required by tests
sfdx force:mdapi:deploy -d test_org/unpackaged --wait 1 -u $SALESFORCE_USERNAME