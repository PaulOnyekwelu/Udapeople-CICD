#!/bin/bash

aws cloudformation deploy \
    --template-file .circleci/files/backend.yml \
    --stack-name "udapeople-backend-$1" \
    --parameter-overrides ID="$1"  \
    --tags project="udapeople-$1"