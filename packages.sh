#!/usr/bin/env bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

packages=(
    vim
    ansible
    archey
    neofetch
    fortune
    arp-scan
    asciinema
    bat
    bit
    cmatrix
    cointop
    ctop
    htop
    composer
    cowsay
    curl
    dnsmasq
    dog
    duf
    exa
    fd
    rg
    fzf
    glances
    go
    gping
    gnu-sed
    httpie
    jq
    lazydocker
    lnav
    lolcat
    font-hack-nerd-font
    font-fira-code-nerd-font
    virtualbox
    mc
    ncdu
    node
    osx-cpu-temp
    pwgen
    python
    speedtest-cli
    sqlite
    starship
    tig
    tldr
    trash
    tree
    watch
    wget
    the_silver_searcher
    wifi-password
)

echo "Installing packages..."

brew install ${packages[*]}

echo "Done!"
