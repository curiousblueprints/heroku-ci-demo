#!/bin/bash
set -e
  
echo "-----> running tests..."

current_dir=${0%/*}

source $current_dir/scripts/export-buildpk-paths.sh
source $current_dir/scripts/export-project-paths.sh
source $current_dir/scripts/read-scratch-org-name.sh
source $current_dir/scripts/deploy-metadata.sh

echo "-----> done running tests" 