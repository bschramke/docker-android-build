#!/bin/sh

#create a non-root user
id $RUN_USER || adduser -u "$RUN_UID" \
    -g 'Build User' \
    -s '/sbin/nologin' \
    -D \
    "$RUN_USER"
    
# create workspace mountpoint
mkdir -p $WORKSPACE_DIR

# create Android SDK dir
mkdir -p $ANDROID_HOME

# create Gradle cache dir
GRADLE_CACHE_DIR="/home/$RUN_USER/.gradle"
mkdir -p $GRADLE_CACHE_DIR

# Fix permissions
chown -R $RUN_USER:$RUN_USER $WORKSPACE_DIR $ANDROID_HOME $GRADLE_CACHE_DIR
chmod -R a+rx $ANDROID_HOME
chmod -R ug+w $ANDROID_HOME $WORKSPACE_DIR $GRADLE_CACHE_DIR
