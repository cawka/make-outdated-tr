#!/usr/bin/env bash

INPUT=$1
if [[ ! -f $INPUT ]]; then
    echo "Usage:"
    echo "    $0 <outdated-pdf>"
fi


rerunlatex () {
    pdflatex -jobname="${INPUT}-outdated" "\def\origfile{${INPUT}}\input{outdated}"
}


rerunlatex
rerunlatex
rerunlatex

rm *.log *.aux *.out
