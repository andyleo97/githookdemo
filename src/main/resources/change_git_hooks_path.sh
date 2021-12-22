#!/bin/bash

CONFIG_CHECK=$(git config --list | grep core.hookspath)

if [[ "$CONFIG_CHECK" = 'core.hookspath=.githooks' ]]; then
    echo 'hookspath already set'
    exit 0
else
    echo 'setting hookspath to .githooks'
    git config core.hookspath .githooks
    exit 0
fi