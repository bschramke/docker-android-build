#!/bin/sh

SDK_HOST=https://dl.google.com/android/repository
SDK_ARCHIVE=sdk-tools-linux-3859397.zip

cd /tmp

if [ ! -f "$SDK_ARCHIVE" ]; then
    echo "Download SDK tools from $SDK_HOST/$SDK_ARCHIVE"
    curl -O "$SDK_HOST/$SDK_ARCHIVE"
else
    echo "$SDK_ARCHIVE already exist."
fi

unzip $SDK_ARCHIVE -d $ANDROID_HOME

rm -f $SDK_ARCHIVE
