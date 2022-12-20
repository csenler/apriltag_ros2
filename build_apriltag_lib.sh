#!/bin/bash

echo "current DIR: ${PWD}"
cd ${PWD}/apriltag

# TODO: protect in case folder not exits

# cmake -B build -GNinja -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF
cmake -B build -GNinja -DCMAKE_BUILD_TYPE=Release
cmake --build build