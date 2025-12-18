#!/bin/bash
# Clean all the code.

# https://mypy.readthedocs.io/en/latest/
# https://docs.astral.sh/ruff/

set -e

SOURCES="ccb_extras tests"

GREEN='\033[0;32m'
NC='\033[0m'

echo "mypy:" && \
mypy --pretty $SOURCES && \
echo "ruff check:" && \
ruff check $SOURCES && \
echo "ruff format:" && \
ruff format --check $SOURCES && \
printf "${GREEN}This code is clean.${NC}\n"
