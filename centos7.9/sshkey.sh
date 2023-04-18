#!/bin/bash
# shellcheck shell=bash

yum install -y openssh git

ssh-keygen -t rsa
