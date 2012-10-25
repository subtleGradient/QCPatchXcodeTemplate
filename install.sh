#!/bin/sh

cd "$(dirname "$0")"

./uninstall.sh

cp -R "sdk/File Templates/Kineme SkankySDK" "/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File Templates"
cp -R "sdk/Project Templates/Kineme SkankySDK" "/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/Project Templates"

mkdir -p /Library/Frameworks/SkankySDK.framework/Headers
cp include/* /Library/Frameworks/SkankySDK.framework/Headers/

mkdir -p "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk/System/Library/Frameworks/SkankySDK.framework/Headers/"
cp include/* "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk/System/Library/Frameworks/SkankySDK.framework/Headers/"

mkdir -p "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk/System/Library/Frameworks/SkankySDK.framework/Headers/"
cp include/* "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk/System/Library/Frameworks/SkankySDK.framework/Headers/"
