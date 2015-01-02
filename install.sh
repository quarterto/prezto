#!/bin/bash
set -x -e

pushd runcoms
for f in z*; do
    ln -sf "$(pwd)/$f" ~/".$f"
done
popd

echo /usr/local/bin/zsh | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh
