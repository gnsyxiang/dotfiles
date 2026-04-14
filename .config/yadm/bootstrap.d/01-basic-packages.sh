#!/bin/bash

GREEN='\033[32m'
NC='\033[0m' # No Color

echo -e "${GREEN}--------------------------------------${NC}"
echo -e "${GREEN}---> basic packages${NC}"
echo -e "${GREEN}--------------------------------------${NC}"

sudo apt install -y \
    open-vm-tools open-vm-tools-desktop \
    tree curl net-tools openssh-server

