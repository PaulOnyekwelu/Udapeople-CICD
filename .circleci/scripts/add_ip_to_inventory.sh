#!/bin/bash
ls -al 
aws ec2 describe-instances \
  --query 'Reservations[].Instances[].PublicIpAddress' \
  --filters "Name=tag:project,Values=udapeople" \
  --output text >> .circleci/ansible/inventory.txt

cat .circleci/ansible/inventory.txt
