#!/bin/sh

case "$1" in
"")
    if [ ! -e $PWD/include/config.h ]; then
        ./configure \
        --host=arm-linux-gnueabihf \
        --prefix=$PWD/_install \
        --enable-shared \
        --disable-static \
        --disable-video \
        --without-x \
        --without-xshm \
        --without-xv \
        --without-jpeg \
        --without-imagemagick \
        --without-gtk \
        --without-python \
        --without-qt
    fi
    make
    make install
    ;;
clean)
    make clean
    ;;
distclean)
    rm -rf $PWD/_install
    make distclean
    ;;
esac