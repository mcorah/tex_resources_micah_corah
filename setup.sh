#!/bin/bash

PROJNAME="tex_resources_micah_corah"

if ! test -f ../.git; then
  echo "Parent is not a git repository." \
    "Verify that this is the correct location for installation," \
    "and initialize as a git repository first."
  exit 1
fi

function linkfile
{
  ln -s ../$1 $PROJNAME/$1
}

cd ..
echo "Linking files"

linkfile micahcorah.sty
