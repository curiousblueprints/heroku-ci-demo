#!/bin/bash

echo "       authenticating against the dev hub..."

sfdx force:auth:jwt:grant --clientid $SF_CLIENT_ID --jwtkeyfile $CI_ASSET_DIR/server.key -u $SF_USERNAME 

echo "       done authenticating against the dev hub"