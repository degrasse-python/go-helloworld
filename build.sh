#!/bin/bash

go build -o hello .

buildkite-agent artifact upload hello