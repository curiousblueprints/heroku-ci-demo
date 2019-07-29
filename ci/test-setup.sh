#!/bin/bash
set -e
  
echo "-----> setting up test..."

source ./$CI_DIR/$SCRIPT_DIR/export-buildpk-paths.sh
source ./$CI_DIR/$SCRIPT_DIR/export-project-paths.sh
source ./$CI_DIR/$SCRIPT_DIR/decrypt-key.sh
source ./$CI_DIR/$SCRIPT_DIR/auth-jwt-grant.sh
source ./$CI_DIR/$SCRIPT_DIR/create-scratch-org.sh
source ./$CI_DIR/$SCRIPT_DIR/remove-decrypted-key.sh
source ./$CI_DIR/$SCRIPT_DIR/write-scratch-org-name.sh

echo "-----> done setting up test"