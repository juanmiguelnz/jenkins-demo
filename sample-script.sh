#!/bin/bash

echo "${env.AZ_USER}"
# az login --service-principal -u ${AZ_USER} -p ${AZ_PASSWORD} --tenant ${AZ_TENANT}