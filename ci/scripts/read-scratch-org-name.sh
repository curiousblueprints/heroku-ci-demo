#!/bin/bash

echo "       reading scratch org name..."

read -r scratch_username < scratch_username
export SCRATCH_USERNAME="$scratch_username"

echo "       done reading scratch org name"