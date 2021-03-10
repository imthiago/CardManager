#!/bin/bash

echo "Updating brew...🏃‍♂️"
brew update

echo "Generating xcode files...🏃‍♂️"
xcodegen

echo "Installing CocoaPods dependencies...🏃‍♂️"
pod install

echo "Done! You can open the *.xcworkspace file 🚀"