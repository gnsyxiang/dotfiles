#!/bin/bash

GREEN='\033[32m'
NC='\033[0m' # No Color

echo -e "${GREEN}--------------------------------------${NC}"
echo -e "${GREEN}---> install git packages${NC}"
echo -e "${GREEN}--------------------------------------${NC}"

sudo apt install -y \
    git tig yadm

