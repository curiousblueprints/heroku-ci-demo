#!/bin/bash
set -e
 
echo "-----> running tests..."

source ./$CI_ASSET_DIR/scripts/export-buildpk-paths.sh
source ./$CI_ASSET_DIR/scripts/read-scratch-org-name.sh
source ./$CI_ASSET_DIR/scripts/deploy-metadata.sh

echo "-----> done running tests" 