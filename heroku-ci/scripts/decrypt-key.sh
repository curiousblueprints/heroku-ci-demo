#!/bin/bash

echo "       decrypting JWT key..."

openssl aes-256-cbc -k $ENC_KEY -in $CI_ASSET_DIR/server.key.enc -out $CI_ASSET_DIR/server.key -d

echo "       done decrypting JWT key"