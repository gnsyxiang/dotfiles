#!/bin/bash

GREEN='\033[32m'
NC='\033[0m' # No Color

echo -e "${GREEN}--------------------------------------${NC}"
echo -e "${GREEN}---> install c packages${NC}"
echo -e "${GREEN}--------------------------------------${NC}"

sudo apt install -y \
    autoconf automake libtool pkg-config \
    clangd build-essential gdb \
    make bear cmake

