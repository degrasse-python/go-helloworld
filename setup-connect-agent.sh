#!/bin/bash

# var
# export TOKEN=XXX

# configure token
sudo sed -i "s/xxx/$TOKEN/g" /etc/buildkite-agent/buildkite-agent.cfg

# For distributions without systemctl (such as Amazon Linux)
sudo service buildkite-agent start

## sudo tail -f /var/log/buildkite-agent.log
journalctl -f -u buildkite-agent