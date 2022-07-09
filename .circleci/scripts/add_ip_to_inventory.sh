#!/bin/bash
 
aws ec2 describe-instances \
  --query 'Reservations[].Instances[].PublicIpAddress' \
  --filters "Name=tag:project,Values=udapeople-$1" \
  --output text >> .circleci/ansible/inventory.txt
