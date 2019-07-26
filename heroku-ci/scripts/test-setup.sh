#!/bin/bash
export PATH="$BUILD_DIR/vendor/sfdx/cli/bin:$PATH"
export PATH="$BUILD_DIR/vendor/sfdx/jq:$PATH"

echo "------> Setting up test..."
bash ./$CI_ASSET_DIR/scripts/create-scratch-org.sh || return 1
echo "------> Done setting up test"