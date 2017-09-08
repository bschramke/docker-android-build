#!/bin/sh

apk update
# we have to install curl and unzip seperate
# because they would deleted with .build-dependencies, i'm not sure why
apk add --update curl make unzip bash
apk add --update --virtual .build-dependencies build-base clang

# clean apk cache
apk del .build-dependencies
#apk cache clean
rm -rf /var/cache/apk/*
