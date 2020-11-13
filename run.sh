#!/bin/sh

cd scratch-vm
npm run watch &
cd ..

cd scratch-gui
npm start
open http://0.0.0.0:8601
cd ..
