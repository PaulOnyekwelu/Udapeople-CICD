#!/bin/bash

aws cloudformation deploy \
    --template-file .circleci/files/frontend.yml \
    --stack-name "udapeople-frontend-$1" \
    --parameter-overrides ID="$1"  \
    --tags project=udapeople