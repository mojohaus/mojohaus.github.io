#!/bin/bash
set -euo pipefail
IFS=$'\n\r'

declare -a SIGFILES
GNUPG_HOME="$(mktemp -d)"
MARKER_START="-----BEGIN PGP PUBLIC KEY BLOCK-----"
MARKER_END="-----END PGP PUBLIC KEY BLOCK-----"

function check_key() {
  local key
  local pubsigfile
  key="${1}"
  pubsigfile=$(mktemp --suffix=.asc)
  SIGFILES+=("$pubsigfile")

  echo "$key" > "$pubsigfile"

  gpg --homedir "$GNUPG_HOME" -v --import-options show-only --keyid-format=0xlong --import "$pubsigfile"
  gpg --list-packets "$pubsigfile"
  echo ""
  rm -f "$pubsigfile"
}

# reads the key blocks from the KEYS file line by line
function read_keys() {
  local key
  key=""
  while read -r keyline; do
    key+="
$keyline"

    if [[ "$keyline" == *"$MARKER_END"* ]]; then
      # KEY completed, now check it.
      check_key "$key"
      key=""
    fi
  done < <(sed -n "/$MARKER_START/,/$MARKER_END/p" src/site/resources/KEYS)
}

function cleanup() {
  for sigfile in "${SIGFILES[@]}"; do
    rm -f "$sigfile"
  done
  rm -rf "$GNUPG_HOME"
}

trap cleanup EXIT

main() {
  read_keys
}

main

