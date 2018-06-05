#!/bin/bash

xcodebuild clean build -project Bridge.xcodeproj -scheme Bridge CODE_SIGNING_REQUIRED=NO -destination 'platform=iOS Simulator,name=iPhone X,OS=11.4' | xcpretty -c
xcodebuild test -project Bridge.xcodeproj -scheme Bridge CODE_SIGNING_REQUIRED=NO -destination 'platform=iOS Simulator,name=iPhone X,OS=11.4' -enableCodeCoverage YES | xcpretty -c

