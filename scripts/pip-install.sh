#!/usr/bin/env bash

set -x

cd req
pip install -U pip-tools
pip-compile -v -o req.txt req.in
pip-sync req.txt