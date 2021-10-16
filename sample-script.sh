#!/bin/bash

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
az login --service-principal -u $AZ_USER -p AZ_PASSWORD --tenant AZ_TENANT