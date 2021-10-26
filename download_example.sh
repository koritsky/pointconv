#!/bin/bash

cd scannet || return
chmod +x download-scannet.py

SCENES=(
	scene0191_00
	scene0707_00
	scene0568_00
)
for scene in "${SCENES[@]}"
do
        ./download-scannet.py -o data --id $scene
done


