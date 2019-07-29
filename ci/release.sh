#!/bin/bash
set -e
 
echo "-----> deploying release to $SF_USERNAME..."

source export-buildpk-paths.sh
source export-project-paths.sh
source ./$CI_DIR/$SCRIPT_DIR/decrypt-key.sh
source ./$CI_DIR/$SCRIPT_DIR/auth-jwt-grant.sh
export SCRATCH_USERNAME="$SF_USERNAME"
source ./$CI_DIR/$SCRIPT_DIR/deploy-metadata.sh
source ./$CI_DIR/$SCRIPT_DIR/remove-decrypted-key.sh

echo "-----> done deploying release to $SF_USERNAME"