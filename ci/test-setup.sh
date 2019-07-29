#!/bin/bash
set -e
  
echo "-----> setting up test..."

source ./$SCRIPT_DIR/export-buildpk-paths.sh
source ./$SCRIPT_DIR/decrypt-key.sh
source ./$SCRIPT_DIR/auth-jwt-grant.sh
source ./$SCRIPT_DIR/create-scratch-org.sh
source ./$SCRIPT_DIR/remove-decrypted-key.sh
source ./$SCRIPT_DIR/write-scratch-org-name.sh

echo "-----> done setting up test"