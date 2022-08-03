#!/usr/bin/env sh

# Gaming setup

# Open AMD drivers
sudo pacman --noconfirm -S                                    \
                    mesa lib32-mesa                           \
                    vulkan-icd-loader lib32-vulkan-icd-loader \
                    vulkan-radeon lib32-vulkan-radeon
# Properietary AMD drivers
paru --skipreview -S                                        \
                    amdgpu-pro-libgl lib32-amdgpu-pro-libgl \
                    vulkan-amdgpu-pro lib32-vulkan-amdgpu-pro amd-vulkan-prefixes

# Translation layers
sudo pacman -S                        \
            wine wine-mono winetricks \
            vkd3d lib32-vkd3d

# Other
sudo pacman -S gamemode lib32-gamemode

# Environments
sudo pacman -S steam lutris
PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python paru -S heroic-games-launcher-beta-bin protonup-qt
