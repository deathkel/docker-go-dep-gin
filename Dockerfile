# This dockerfile for golang develop
# VERSION: 0.1
# Author: KEL(wjf1@meitu.com)

# Base Image
FROM golang:1.11-alpine3.8

# Install Git (go get command need it), dep, gin
RUN echo "Installing git" && apk add git \
&& echo "Installing dep" && go get -u github.com/golang/dep/cmd/dep \
&& echo "Installing gin" && go get -u github.com/codegangsta/gin \
&& echo "Clean cache" && rm -rf /var/cache/apk/*
