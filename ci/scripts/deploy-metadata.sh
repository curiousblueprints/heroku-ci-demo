#!/bin/bash

echo "       deploying metadata..."

sfdx force:mdapi:deploy -d src --wait 1 -u $SCRATCH_USERNAME --testlevel RunLocalTests --ignorewarnings

echo "       done deploying metadata"