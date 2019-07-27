#!/bin/bash

echo "-----> Setting up test..."
bash ./$CI_ASSET_DIR/scripts/export-paths.sh
bash ./$CI_ASSET_DIR/scripts/decrypt-key.sh
bash ./$CI_ASSET_DIR/scripts/auth-jwt-grant.sh
bash ./$CI_ASSET_DIR/scripts/create-scratch-org.sh
echo "-----> Done setting up test"