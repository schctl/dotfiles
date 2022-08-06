#!/usr/bin/env sh
# Install the base configuration

set -e

ROOT_PATH=$(dirname $(realpath $0))/../

$ROOT_PATH/scripts/base/install-pkgs.sh
$ROOT_PATH/scripts/base/install-dots.sh
