#!/bin/bash

# Clean up old builds
rm -rf olariv2*.zip

# Build
./node_modules/.bin/gulp build

# Create folders
now=$(date +%y-%m-%d)
name1="olariv2-$now"
name2="olariv2-ai1ec-$now"
mkdir $name1
mkdir $name2

#Copying required resources
cp -R build/* $name1/
cp -R build-ai1ec/* $name2/

cp LICENSE $name1/
cp README.md $name1/

cp LICENSE $name2/
cp README.md $name2/


#creating zipfiles

zip "$name1.zip" $name1/*
zip "$name2.zip" $name2/*

#cleaning up

rm -r $name1
rm -r $name2