#!/bin/bash
set -e
 
echo "-----> deploying release to $SF_USERNAME..."

current_dir=${0%/*}

source $current_dir/scripts/export-buildpk-paths.sh
source $current_dir/scripts/export-project-paths.sh
source $current_dir/scripts/decrypt-key.sh
source $current_dir/scripts/auth-jwt-grant.sh
export SCRATCH_USERNAME="$SF_USERNAME"
source $current_dir/scripts/deploy-metadata.sh
source $current_dir/scripts/remove-decrypted-key.sh

echo "-----> done deploying release to $SF_USERNAME"