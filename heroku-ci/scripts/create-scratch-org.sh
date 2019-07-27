#!/bin/bash


echo "Creating scratch org..."
export SALESFORCE_USERNAME=$(sfdx force:org:create --definitionfile $CI_ASSET_DIR/project-scratch-def.json --targetdevhubusername $SF_USERNAME --json | jq -r '.result.username')

# Optional: deploy metadata required by tests
sfdx force:mdapi:deploy -d force-app/main/default --wait 1 -u $SALESFORCE_USERNAME --testlevel RunLocalTests