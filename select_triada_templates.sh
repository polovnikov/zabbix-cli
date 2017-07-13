#!/bin/bash

files=$(grep -Lr "<group><name>Triada TV Templates</name></group>")
echo $files
rm -v $files
