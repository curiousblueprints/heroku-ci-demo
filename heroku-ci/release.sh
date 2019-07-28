#!/bin/bash

source ./$CI_ASSET_DIR/scripts/export-paths.sh
source ./$CI_ASSET_DIR/scripts/decrypt-key.sh
source ./$CI_ASSET_DIR/scripts/auth-jwt-grant.sh
export SCRATCH_USERNAME="$SF_USERNAME"
source ./$CI_ASSET_DIR/scripts/deploy-metadata.sh
source ./$CI_ASSET_DIR/scripts/remove-decrypted-key.sh