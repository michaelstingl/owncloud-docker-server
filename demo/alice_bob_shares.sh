#!/usr/bin/env bash
set -xe

SERVER_URI=http://localhost
DAV_API_PATH=remote.php/dav/files
SHARE_API_PATH=ocs/v2.php/apps/files_sharing/api/v1
SHARE_OWNER=alice
SHARE_RECIPIENT=bob
OWNCLOUD_USER_PASSWORD=password

curl -u $SHARE_OWNER:$OWNCLOUD_USER_PASSWORD -X MKCOL $SERVER_URI/$DAV_API_PATH/$SHARE_OWNER/folder-alice-shared-to-bob-pending
curl -u $SHARE_OWNER:$OWNCLOUD_USER_PASSWORD $SERVER_URI/$SHARE_API_PATH/shares \
     --data "shareType=0&shareWith=$SHARE_RECIPIENT&permissions=31&path=folder-alice-shared-to-bob-pending"

curl -u $SHARE_OWNER:$OWNCLOUD_USER_PASSWORD -X MKCOL $SERVER_URI/$DAV_API_PATH/$SHARE_OWNER/folder-alice-shared-to-bob-accepted
curl -u $SHARE_OWNER:$OWNCLOUD_USER_PASSWORD $SERVER_URI/$SHARE_API_PATH/shares \
     --data "shareType=0&shareWith=$SHARE_RECIPIENT&permissions=31&path=folder-alice-shared-to-bob-accepted"


curl -u $SHARE_RECIPIENT:$OWNCLOUD_USER_PASSWORD $SERVER_URI/$SHARE_API_PATH/shares/pending/{shareid}




curl -u $SHARE_RECIPIENT:$OWNCLOUD_USER_PASSWORD $SERVER_URI/$SHARE_API_PATH/shares?shared_with_me=true&state={state}

# curl -u $SHARE_OWNER:$OWNCLOUD_USER_PASSWORD -X MKCOL "$SERVER_URI/$DAV_API_PATH/$SHARE_OWNER/folder-alice-shared-to-bob-accepted"

# curl -u $SHARE_OWNER:$OWNCLOUD_USER_PASSWORD -X MKCOL "$SERVER_URI/$DAV_API_PATH/$SHARE_OWNER/folder-alice-shared-to-bob-declined"

# curl -u $SHARE_OWNER:$OWNCLOUD_USER_PASSWORD -X MKCOL "$SERVER_URI/$DAV_API_PATH/$SHARE_OWNER/folder-alice-link"

true


