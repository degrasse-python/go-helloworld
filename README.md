# Go Hello World docker example using Buildkite for CI

[![Go Reference](https://pkg.go.dev/badge/golang.org/x/example.svg)](https://pkg.go.dev/golang.org/x/example)
[![Build status](https://badge.buildkite.com/1d8acef418e9c966868f30d4459c3015498900d300fab9d8ad.svg)](https://buildkite.com/deon-510/hello-world)

This repository is a fork of the basic Golang example repo, trimmed down to contain a single example. The project is built using a buildkite agent on an EC2 instance on AWS using the Amazon Linux 2 image. You will need to:

1. Setup an EC2 instance
2. Install buildkite on the instance
3. Install docker on the instance
4. Create a webhook with your scm to trigger builds
5. Use my example pipeline to help you get started :)


### Setup EC2 agent
To setup the EC2, agent login to AWS and chose the free tier of EC2 with the Amazon Linux 2 image. Make sure you can ssh to the EC2 VM from your local before continuing.

### Install buildkite

Follow the instructions from buildkite to install a buildkite-agent on Redhat / CentOS / Amazon Linux image.

notes: Make sure you don't start the docker service until you have added the agent to the docker group. If your agent isn't able to run docker commands check to make sure the buildkite-agent is in the docker group on the VM -> restart both services and try again.


### Install Docker
ssh to the VM and run the commands below to prep the VM to be able to run docker.

```
curl -L https://raw.githubusercontent.com/degrasse-python/go-helloworld/main/setup-docker-ec2.sh > setup-docker.sh
./setup-docker.sh
```

### Buildkite pipeline

The pipeline in the .buildkite dir has all of the instructions to build the project and run it on the EC2 instance in a docker container. The artifact from the go build is uploaded to an S3 bucket for use at a later stage. Configure a webhook to wait for a push to the scm to generate a build using the EC2 agent. If you have made is this far everything should be working properly.


## To build the project locally:

```
$ cd hello
$ go build
```

A simple application that takes a command line argument, and then returns it to you in a string:

```
$ chmod +x hello/hello
$ ./hello/hello Deon Saunders
```

The above will return 'Hello, Deon Saunders!'

