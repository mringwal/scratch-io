#!/bin/sh

# git submodules
git submodule init
git submodule update


# npm dependencies
echo "Setup scratch-vm"
cd scratch-vm
npm install schema-utils
npm install
npm link
cd ..

echo "Setup scratch-gui"
cd scratch-gui
npm link scratch-vm
cd ..

echo "Done"
