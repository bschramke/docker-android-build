#!/bin/sh

#create a non-root user
id $RUN_USER || adduser --uid "$RUN_UID" \
    --gecos 'Build User' \
    --disabled-login \
    --disabled-password \
    "$RUN_USER"
    
# create workspace mountpoint
mkdir -p $WORKSPACE_DIR

# create Android SDK dir
mkdir -p $ANDROID_HOME

# Fix permissions
chown -R $RUN_USER:$RUN_USER $WORKSPACE_DIR $ANDROID_HOME
chmod -R a+rx $ANDROID_HOME
chmod -R ug+w $ANDROID_HOME $WORKSPACE_DIR
