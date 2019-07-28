#!/bin/bash

echo "       creating scratch org..."

{ source sfdx force:org:create --definitionfile $CONFIG_DIR/project-scratch-def.json --targetdevhubusername $SF_USERNAME --json | jq -r '.result.username'; } > scratch_username
read -r scratch_username < scratch_username
export SCRATCH_USERNAME="$scratch_username"

echo "       done creating scratch org"