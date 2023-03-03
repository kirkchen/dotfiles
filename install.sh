#!/bin/bash

install() {
    script_dir=$(dirname "$(readlink -f "$0")")
    export DOTFILES_PATH="$script_dir"
}

# install