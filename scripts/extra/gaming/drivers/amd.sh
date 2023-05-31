#!/usr/bin/env sh
# Install AMD specific drivers

# Open source AMD drivers
OPEN_DRIVERS="              \
    mesa                    \
    vulkan-radeon"

# Properietary AMD drivers
# Can't install `amdgpu-pro-installer` for some reason
CLOSED_DRIVERS="            \
    amf-amdgpu-pro          \
    amdgpu-pro-oglp         \
    lib32-amdgpu-pro-oglp   \
    vulkan-amdgpu-pro       \
    lib32-vulkan-amdgpu-pro"

# Miscellaneous tools
TOOLS="                     \
    amd-vulkan-prefixes"

paru --sudoloop -S $OPEN_DRIVERS $CLOSED_DRIVERS $TOOLS
