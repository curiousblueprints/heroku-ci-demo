#!/bin/bash
set -e
 
echo "-----> deploying release to $SF_USERNAME..."

source ./$SCRIPT_DIR/export-buildpk-paths.sh
source ./$SCRIPT_DIR/decrypt-key.sh
source ./$SCRIPT_DIR/auth-jwt-grant.sh
export SCRATCH_USERNAME="$SF_USERNAME"
source ./$SCRIPT_DIR/deploy-metadata.sh
source ./$SCRIPT_DIR/remove-decrypted-key.sh

echo "-----> done deploying release to $SF_USERNAME"