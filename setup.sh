#!/bin/bash

PROJNAME="tex_resources_micah_corah"

if ! test -d ../.git; then
  echo "Parent is not a git repository." \
    "Verify that this is the correct location for installation," \
    "and initialize as a git repository first."
  exit 1
fi

function linkfile
{
  echo "Linking: $1"
  ln -s $PROJNAME/$1 ../$1
}

echo "Linking files"


linkfile micahcorah.sty
ln -s $PROJNAME/minesvisual/minesvisual.sty ../minesvisual.sty

linkfile bibliography.bib
linkfile micah_corah_papers.bib
linkfile publisher_abbreviations.bib

