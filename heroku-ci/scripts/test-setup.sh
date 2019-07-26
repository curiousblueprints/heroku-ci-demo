#!/bin/bash

echo "------> Setting up test..."

export PATH="vendor/sfdx/cli/bin:$PATH"
export PATH="vendor/sfdx/jq:$PATH"

bash ./$CI_ASSET_DIR/scripts/create-scratch-org.sh
echo "------> Done setting up test"