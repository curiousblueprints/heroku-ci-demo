#!/bin/bash

# Decrypt server.key. Used for JWT authorization.
openssl aes-256-cbc -k $ENC_KEY -in $CI_ASSET_DIR/server.key.enc -out $CI_ASSET_DIR/server.key -d