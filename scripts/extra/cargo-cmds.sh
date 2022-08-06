#!/usr/bin/env sh
# Some cargo subcommands

CARGO_CMDS="
    cargo-audit      \
    cargo-bloat      \
    cargo-edit       \
    cargo-criterion  \
    cargo-llvm-cov   \
    cargo-msrv       \
    cargo-pgo"

cargo install $CARGO_CMDS
