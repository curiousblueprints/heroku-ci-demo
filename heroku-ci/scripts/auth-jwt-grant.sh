#!/bin/bash

# Authenticate 
sfdx force:auth:jwt:grant --clientid $SF_CLIENT_ID --jwtkeyfile $CI_ASSET_DIR/server.key -u $SF_USERNAME 