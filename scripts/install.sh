#!/usr/bin/env sh

# Install the base configuration

set -e

ABS_PATH=$(dirname $(realpath $0))/../

$ABS_PATH/scripts/base/install-pkgs.sh
$ABS_PATH/scripts/base/install-dots.sh
