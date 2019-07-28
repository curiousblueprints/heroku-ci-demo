#!/bin/bash
set -e
 
echo "-----> setting up test..."

source ./$CI_ASSET_DIR/scripts/export-buildpk-paths.sh
source ./$CI_ASSET_DIR/scripts/export-project-paths.sh
source ./$CI_ASSET_DIR/scripts/decrypt-key.sh
source ./$CI_ASSET_DIR/scripts/auth-jwt-grant.sh
source ./$CI_ASSET_DIR/scripts/create-scratch-org.sh
source ./$CI_ASSET_DIR/scripts/remove-decrypted-key.sh
source ./$CI_ASSET_DIR/scripts/write-scratch-org-name.sh

echo "-----> done setting up test"