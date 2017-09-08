FROM openjdk:8-jdk-alpine

MAINTAINER Björn Schramke "bjoern.schramke@epost-dev.de"

# Environment variables
ENV WORKSPACE_DIR /opt/workspace
ENV ANDROID_HOME /opt/android-sdk
ENV ANDROID_SDK_HOME $ANDROID_HOME
ENV ANDROID_NDK_HOME $ANDROID_HOME/ndk-bundle
ENV PATH ${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_NDK_HOME
ENV PATH ${PATH}:/opt/tools

# Support Gradle
ENV TERM dumb
ENV JAVA_OPTS "-Xms4096m -Xmx4096m"
ENV GRADLE_OPTS "-XX:+UseG1GC -XX:MaxGCPauseMillis=1000"

#Set default values for run user
ENV RUN_USER mobileci
ENV RUN_UID 1000

# Copy install tools
COPY tools /opt/tools

# update system packages
RUN update-packages.sh

# create work directories
RUN init-system.sh

# add Android SDK Licenses
COPY licenses/ $ANDROID_HOME/licenses
RUN chown -Rf $RUN_USER:$RUN_USER $ANDROID_HOME/licenses

USER $RUN_USER

# download & install Android SDK Tools
RUN install-android-sdk.sh

# install default Android SDK packages
RUN update-android-sdk.sh

RUN mkdir -p  ~/.gradle

# Go to workspace
VOLUME ["/opt/workspace", "/home/${RUN_USER}/.gradle" ]
WORKDIR /opt/workspace

#ENTRYPOINT ["./gradlew"]
ENTRYPOINT ["/bin/sh"]
