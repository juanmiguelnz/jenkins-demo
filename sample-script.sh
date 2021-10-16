#!/bin/bash

az login --service-principal -u $AZ_USER -p $AZ_PASSWORD --tenant $AZ_TENANT
az account set -s $AZ_SUBSCRIPTION