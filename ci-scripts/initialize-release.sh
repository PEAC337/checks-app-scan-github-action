#!/usr/bin/env bash

#
# Copyright (c) 2025. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
# Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
# Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
# Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
# Vestibulum commodo. Ut rhoncus gravida arcu.
#

set -e

if ! command -v semversioner > /dev/null 2>&1; then
    echo "semversioner is not installed. Please install it with 'pip instal semversioner'"
    exit 1
fi

if [[ $@ -lt 2 ]]; then
    echo "Usage: $0 <major|minor|patch> <description>"
    exit 1
fi

semversioner add-change --type "$1" --description "$2"

git add .changes/
git commit -m "$2"
git push
