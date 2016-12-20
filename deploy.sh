#!/bin/bash

if [ -z "$1" ]
then
  echo "Usage: must pass the terraform directory"
  exit 1
fi

export OS_USERNAME=login
export OS_PASSWORD=password
export OS_AUTH_URL=http://IP:5000/v2.0
export OS_TENANT_NAME=projeto
export OS_REGION_NAME=RegionOne

cd $1
terraform $2
