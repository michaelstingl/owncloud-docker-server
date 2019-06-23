#!/usr/bin/env bash
set -xe

if [[ -n "${OWNCLOUD_USER_ADD}" ]]
then
for VAL in $(echo ${OWNCLOUD_USER_ADD} | tr "," " ")
do
  if [[ $(occ user:list | grep ${VAL}) ]]
  then
    echo "Found ${VAL} - no need to create"
  else
    echo "Need to create ${VAL}"
    occ user:add --password-from-env ${VAL}
  fi
done
fi

true
