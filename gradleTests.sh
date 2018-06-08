#!/bin/bash
# This one is just a sample test
gradle --build-file TestTemplate/java/T0/build.gradle test
#
#
gradle --build-file Bridge/java/Bridge/build.gradle test
gradle --build-file Visitor/java/Visitor/build.gradle test

