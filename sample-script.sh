#!/bin/bash

az login --service-principal -u ${env.AZ_USER} -p ${env.AZ_PASSWORD} --tenant ${env.AZ_TENANT}