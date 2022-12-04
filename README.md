# Go example project

[![Go Reference](https://pkg.go.dev/badge/golang.org/x/example.svg)](https://pkg.go.dev/golang.org/x/example)
[![Build status](https://badge.buildkite.com/c4d0ec52dba35dc6e461b7b2c79c1072c5ab221374a2ac91d5.svg)](https://buildkite.com/self-50/hello-world)

This repository is a fork of the basic Golang example repo, trimmed down to contain a single example.

## Build the project

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
