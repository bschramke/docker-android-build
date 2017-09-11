#!/bin/sh

apt-get update 
apt-get install -y --no-install-recommends curl bash unzip expect build-essential

# clean cache
apt-get clean
rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*
