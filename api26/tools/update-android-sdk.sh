#!/bin/sh

sdkmanager --update --channel=0 --verbose
sdkmanager --uninstall emulator
sdkmanager --package_file=/opt/tools/sdk-packages.cfg --verbose
