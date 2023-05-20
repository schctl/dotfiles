#!/usr/bin/env sh
# Gaming setup

install_drivers() {
    ROOT_PATH=$(dirname $(realpath $0))/../../../

    echo "Install drivers for platform [amd/nvidea/intel]: "
    read drivers

    $ROOT_PATH/scripts/extra/gaming/drivers/$drivers.sh
}

install_tools() {
    # Miscellaneous tools
    TOOLS="                     \
        gamemode"

    # Translation layers
    COMPAT="                                   \
        wine wine-mono winetricks              \
        proton-ge-custom-bin protontricks      \
        vkd3d-proton-bin dxvk-bin"

    # Environments
    ENVIRONMENTS="              \
        steam                   \
        heroic-games-launcher-bin"

    paru --sudoloop -S $TOOLS $COMPAT $ENVIRONMENTS
}

install_drivers
install_tools
