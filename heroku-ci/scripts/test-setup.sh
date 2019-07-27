#!/bin/bash

echo "-----> setting up test..."

source ./$CI_ASSET_DIR/scripts/export-paths.sh
source ./$CI_ASSET_DIR/scripts/decrypt-key.sh
source ./$CI_ASSET_DIR/scripts/auth-jwt-grant.sh
source ./$CI_ASSET_DIR/scripts/create-scratch-org.sh
source ./$CI_ASSET_DIR/scripts/remove-decrypted-key.sh

echo "-----> done setting up test"