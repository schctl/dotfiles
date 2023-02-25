#!/usr/bin/env sh
# Install AMD specific drivers

# Open source AMD drivers
OPEN_DRIVERS="              \
    mesa                    \
    vulkan-radeon"

# Properietary AMD drivers
CLOSED_DRIVERS="            \
    amdgpu-pro-libgl        \
    vulkan-amdgpu-pro"

# Miscellaneous tools
TOOLS="                     \
    amd-vulkan-prefixes"

paru --sudoloop -S $OPEN_DRIVERS $CLOSED_DRIVERS $TOOLS
