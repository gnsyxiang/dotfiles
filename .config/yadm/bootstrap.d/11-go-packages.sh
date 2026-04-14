#!/bin/bash

GREEN='\033[32m'
NC='\033[0m' # No Color

echo -e "${GREEN}--------------------------------------${NC}"
echo -e "${GREEN}---> install go packages${NC}"
echo -e "${GREEN}--------------------------------------${NC}"

# 安装依赖
# sudo apt-get install curl git mercurial make binutils bison gcc build-essential

# 安装gvm
# GVM_REMOTE="git@github.com:moovweb/gvm.git" bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

# 配置下载源
# export GO_SOURCE_URL="git@github.com:golang/go.git"
# export GO_BINARY_BASE_URL=https://golang.google.cn/dl/

# 安装版本
# gvm install go1.22.11 --binary

# 切换并使用版本

# 临时切换到该版本
# gvm use go1.22.11

# 或者，将其设置为默认版本
# gvm use go1.22.11 --default

# sudo apt install -y bison

# 1，下载源码
# git clone git@github.com:moovweb/gvm.git

# 2，设置环境变量
# [[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

