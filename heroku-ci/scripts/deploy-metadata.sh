#!/bin/bash

echo "       deploying metadata..."

sfdx force:mdapi:deploy -d force-app/main/default --wait 1 -u $SCRATCH_USERNAME --testlevel RunLocalTests --ignorewarnings

echo "       done deploying metadata"