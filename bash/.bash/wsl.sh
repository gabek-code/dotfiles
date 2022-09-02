#!/bin/bash

echo wsl

if [ "$GK_IS_FB" == 1 ]; then
    alias hg='hg.exe'
    alias jf='jf.exe'
    alias yarn='yarn.exe'
fi
