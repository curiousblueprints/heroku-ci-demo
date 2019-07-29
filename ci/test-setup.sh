#!/bin/bash
set -e
  
echo "-----> setting up test..."

source ./$SCIRPT_DIR/export-buildpk-paths.sh
source ./$SCIRPT_DIR/decrypt-key.sh
source ./$SCIRPT_DIR/auth-jwt-grant.sh
source ./$SCIRPT_DIR/create-scratch-org.sh
source ./$SCIRPT_DIR/remove-decrypted-key.sh
source ./$SCIRPT_DIR/write-scratch-org-name.sh

echo "-----> done setting up test"