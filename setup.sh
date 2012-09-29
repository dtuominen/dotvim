#!/bin/bash

if [[ ! -h ~/.vimrc ]]; then
    ln -s ~/.vim/.vimrc ~/.vimrc;
fi

git submodule update --init;
