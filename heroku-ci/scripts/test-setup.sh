#!/bin/bash

echo "------> Setting up test..."
bash ./$CI_ASSET_DIR/scripts/create-scratch-org.sh || return 1
echo "------> Done setting up test"