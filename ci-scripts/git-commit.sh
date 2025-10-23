#!/bin/bash

#
# Copyright (c) 2025. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
# Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
# Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
# Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
# Vestibulum commodo. Ut rhoncus gravida arcu.
#

# Commit back to the repository
# version number, push the tag back to the remote.

set -e

# Tag and push
tag=$(semversioner current-version)

git config --global user.email "noreply-ghbot@github.com"
git config --global user.name "Github Bot"
git pull
git add .
git commit -m "Update files for new version '${tag}' [skip ci]"
git push origin ${GITHUB_REF}