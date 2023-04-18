#!/bin/bash
# shellcheck shell=bash

# zsh
sudo yum update && sudo yum -y install zsh

# ohmyzsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# zsh-syntax-highlighting
cd /etc/yum.repos.d/ || exit
wget https://download.opensuse.org/repositories/shells:zsh-users:zsh-syntax-highlighting/CentOS_7/shells:zsh-users:zsh-syntax-highlighting.repo
yum install zsh-syntax-highlighting

# zsh-users:zsh-autosuggestions
cd /etc/yum.repos.d/ || exit
wget https://download.opensuse.org/repositories/shells:zsh-users:zsh-autosuggestions/CentOS_7/shells:zsh-users:zsh-autosuggestions.repo
yum install zsh-autosuggestions