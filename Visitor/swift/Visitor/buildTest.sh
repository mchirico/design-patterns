#!/bin/bash

xcodebuild clean build -project Visitor.xcodeproj -scheme Visitor CODE_SIGNING_REQUIRED=NO -destination 'platform=iOS Simulator,name=iPhone X,OS=11.4' | xcpretty -c
xcodebuild test -project Visitor.xcodeproj -scheme Visitor CODE_SIGNING_REQUIRED=NO -destination 'platform=iOS Simulator,name=iPhone X,OS=11.4' -enableCodeCoverage YES | xcpretty -c

