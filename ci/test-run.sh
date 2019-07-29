#!/bin/bash
set -e
  
echo "-----> running tests..."

source ./$SCRIPT_DIR/export-buildpk-paths.sh
source ./$SCRIPT_DIR/read-scratch-org-name.sh
source ./$SCRIPT_DIR/deploy-metadata.sh

echo "-----> done running tests" 