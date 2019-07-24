#!/bin/bash

echo "------> Setting up test..."
bash ./$CI_ASSET_DIR/scripts/create-scratch-org.sh || set -e
echo "------> Done setting up test"