#!/bin/bash

echo "-----> running tests..."

source ./$CI_ASSET_DIR/scripts/read-scratch-org-name.sh

echo "$SF_USERNAME"

source ./$CI_ASSET_DIR/scripts/deploy-metadata.sh

echo "-----> done running tests" 