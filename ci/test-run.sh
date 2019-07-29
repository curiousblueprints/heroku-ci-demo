#!/bin/bash
set -e
  
echo "-----> running tests..."

source export-buildpk-paths.sh
source export-project-paths.sh
source ./$CI_DIR/$SCRIPT_DIR/read-scratch-org-name.sh
source ./$CI_DIR/$SCRIPT_DIR/deploy-metadata.sh

echo "-----> done running tests" 