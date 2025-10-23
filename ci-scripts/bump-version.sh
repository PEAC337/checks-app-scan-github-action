#!/usr/bin/env bash

#
# Copyright (c) 2025. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
# Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
# Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
# Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
# Vestibulum commodo. Ut rhoncus gravida arcu.
#

# Bump versions using semversioner

previous_version=$(semversioner current-version)

semversioner release

new_version=$(semversioner current-version)

echo "Generating CHANGELOG.md file..."
semversioner changelog > CHANGELOG.md
