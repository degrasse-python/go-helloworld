#!/bin/bash

# Apply pending updates using the yum command:
sudo yum update
# Search for Docker package:
sudo yum search docker
# Get version information:
sudo yum info docker
# install docker
sudo yum install docker
#Add group membership for the default ec2-user so you can run all docker commands without using the sudo command:
sudo usermod -a -G docker ec2-user
id ec2-user
# Reload a Linux user's group assignments to docker w/o logout
newgrp docker
#Need docker-compose too? Try any one of the following command:
# 1. Get pip3 

sudo yum install python3-pip
# 2. Then run any one of the following
sudo pip3 install docker-compose # with root access

# add buildkite-agent to docker
sudo usermod -a -G docker buildkite-agent

# Enable docker service at AMI boot time:
sudo systemctl enable docker.service
# Start the Docker service:
sudo systemctl start docker.service
# Get the status of the AMI
sudo systemctl status docker.service