#!/bin/bash
# shellcheck shell=bash

# golang 1.19

cd /opt/golang || exit 1

wget https://go.dev/dl/go1.19.8.linux-amd64.tar.gz

tar -zxvf go1.19.8.linux-amd64.tar.gz

ln -s "$PWD"/go/bin/* /usr/local/bin

# go env 
mkdir /root/go
go env -w GOPROXY="https://goproxy.cn,direct"