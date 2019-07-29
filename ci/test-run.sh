#!/bin/bash
set -e
  
echo "-----> running tests..."

source ./$SCIRPT_DIR/export-buildpk-paths.sh
source ./$SCIRPT_DIR/export-project-paths.sh
source ./$SCIRPT_DIR/read-scratch-org-name.sh
source ./$SCIRPT_DIR/deploy-metadata.sh

echo "-----> done running tests" 