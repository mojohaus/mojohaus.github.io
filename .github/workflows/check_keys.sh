#!/bin/bash
set -euo pipefail

GNUPGHOME=$(mktemp -d)
export GNUPGHOME

trap "exit 1"               HUP INT PIPE QUIT TERM
trap 'rm -rf "$GNUPGHOME"'  EXIT

echo "::group::Importing keys"
gpg --allow-weak-key-signatures --import src/site/resources/KEYS
echo "::endgroup::"

EXPIRED=`gpg --list-keys --with-colons --with-fingerprint | awk -F ":" -- '/^pub:e:/ { print $5 }'`

if [ -n "$EXPIRED" ]; then
    echo "::group::Expired keys"
    for KEY in $EXPIRED; do
        KEY_DESC=`gpg --list-keys --keyid-format=0xlong $KEY | grep "pub"`
        echo "::warning::$KEY_DESC"
        gpg --list-keys --keyid-format=0xlong $KEY
    done
    echo "::endgroup::"
fi

