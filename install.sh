#!/bin/bash
versions=(0.8.4 0.9.2 0.9.3)

for version in ${versions[@]}; do
    DFX_VERSION=$version sh -ci "$(curl -fsSL https://smartcontracts.org/install.sh)"
    dfx cache install
    dfx toolchain install $version
done

# show installed toolchains
dfx toolchain list