#!/bin/sh

set -e

pipenv install --system
sh -c "pytest -s $*"
