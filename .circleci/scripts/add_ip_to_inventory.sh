#!/bin/bash
ls -al 
aws ec2 describe-instances \
  --query 'Reservations[].Instances[].PublicIpAddress' \
  --filters "Name=tag:Project,Values=Ansible" \
  --output text >> /root/project/.circleci/ansible/inventory.txt