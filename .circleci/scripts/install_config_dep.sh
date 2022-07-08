#!/bin/bash

apk update -y
apk upgrade -y
apk add --update tar gzip
apk add --update ansible
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install