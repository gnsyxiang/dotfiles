#!/bin/bash

GREEN='\033[32m'
NC='\033[0m' # No Color

echo -e "${GREEN}--------------------------------------${NC}"
echo -e "${GREEN}---> apt update ${NC}"
echo -e "${GREEN}--------------------------------------${NC}"

sudo apt update

