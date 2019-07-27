#!/bin/bash

echo "       deploying metadata..."

sfdx force:mdapi:deploy -d force-app/main/default --wait 1 -u $SALESFORCE_USERNAME --testlevel RunLocalTests

echo "       done deploying metadata"