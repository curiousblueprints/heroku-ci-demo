#!/bin/bash
set -e
  
echo "-----> setting up test..."

current_dir=${0%/*}

source $current_dir/scripts/export-buildpk-paths.sh
source $current_dir/scripts/export-project-paths.sh
source $current_dir/scripts/decrypt-key.sh
source $current_dir/scripts/auth-jwt-grant.sh
source $current_dir/scripts/create-scratch-org.sh
source $current_dir/scripts/remove-decrypted-key.sh
source $current_dir/scripts/write-scratch-org-name.sh

echo "-----> done setting up test"