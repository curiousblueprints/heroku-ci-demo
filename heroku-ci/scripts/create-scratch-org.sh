#!/bin/bash

echo "       creating scratch org..."

export SCRATCH_USERNAME= { source sfdx force:org:create --definitionfile $CONFIG_DIR/project-scratch-def.json --targetdevhubusername $SF_USERNAME --json | jq -r '.result.username'; }

echo "       done creating scratch org"