#!/bin/bash

arg=$1

function initialize {
    meson build --prefix=/usr
    
    result=$?
    
    if [ $result -gt 0 ]; then
        echo "Unable to initialize, please review log"
        exit 1
    fi

    cd build

    sudo ninja install

    result=$?

    if [ $result -gt 0 ]; then
        echo "Unable to build project, please review log"
        exit 2
    fi

    glib-compile-schemas /usr/share/glib-2.0/schemas/
    gsettings set org.gtk.Settings.Debug enable-inspector-keybinding true
}

case $1 in
"clean")
    sudo rm -rf ./build
    ;;
"run")
    initialize
    ./src/com.github.zedcore.test
    ;;
esac