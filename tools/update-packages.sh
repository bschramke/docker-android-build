#!/bin/sh

apk update
apk add --update --virtual .build-dependencies curl unzip bash build-base

# clean apk cache
apk del .build-dependencies
#apk cache clean
rm -rf /var/cache/apk/*
