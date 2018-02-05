#!/bin/sh
set -e

plist="$TARGET_BUILD_DIR/$CONTENTS_FOLDER_PATH/GoogleService-Info.plist"

if [ -f "$plist" ]; then
    /usr/libexec/PlistBuddy -c "Set :GOOGLE_APP_ID $GOOGLE_APP_ID" "$plist"
else
    echo "Google service config not found at path: $plist"
    exit 1
fi

