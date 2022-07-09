#!/bin/bash

aws s3 rm s3://udapeople-$1 --recursive
aws cloudformation delete-stack --stack-name udapeople-backend-$1
aws cloudformation delete-stack --stack-name udapeople-frontend-$1