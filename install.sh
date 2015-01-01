#!/bin/bash

for f in runcoms/z*; do
    ln -s "$f" "~/.$f"
done

chsh -s /usr/local/bin/zsh
