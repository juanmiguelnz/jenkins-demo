#!/bin/bash

apt update && apt upgrade
apt install python3 python3-pip -y
python3.9 --version