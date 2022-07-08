#!/bin/bash

aws cloudformation delete-stack --stack-name udapeople-backend-$1
aws cloudformation delete-stack --stack-name udapeople-frontend-$1