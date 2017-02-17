#!/bin/sh
git clone https://github.com/ingojaeckel/armory.git
cd armory/src
../scripts/deps.sh
../scripts/build.sh
