#!/bin/bash


vsce package
sed -e 's/"publisher": "-Parz1val1"/"publisher": "jsw"/g' ./package.json >./package.json.temp
mv package.json package.json.2.temp
mv package.json.temp package.json
ovsx publish -p $(cat ovsx.key)
rm package.json
mv package.json.2.temp package.json

