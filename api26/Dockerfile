FROM bschramke/android-build-base:8-jdk

MAINTAINER Björn Schramke "bjoern.schramke@epost-dev.de"

# install default Android SDK packages
COPY tools/update-android-sdk.sh /opt/tools/
COPY tools/sdk-packages.cfg /opt/tools/
RUN update-android-sdk.sh

