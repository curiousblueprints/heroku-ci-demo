#!/bin/bash

echo "------> Setting up test..."
bash create-scratch-org.sh || set -e
echo "------> Done setting up test"