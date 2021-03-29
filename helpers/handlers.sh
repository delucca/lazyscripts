#!/usr/bin/env bash

# Imports
# -------------------------------------------------------------------------------------------------

IMPORT_COMMAND=${IMPORT_COMMAND:-"curl -s"}
REPOSITORY_URL=${REPOSITORY_URL:-"https://raw.githubusercontent.com/delucca/lazyscripts"}
REPOSITORY_BRANCH=${REPOSITORY_BRANCH:-"main"}

source <(eval "${IMPORT_COMMAND}" "${REPOSITORY_URL}/${REPOSITORY_BRANCH}/helpers/log.sh")

# Helpers
# -------------------------------------------------------------------------------------------------

function throw_error {
  message=$1

  log_error "${message}"
  exit 1
}

function update_su_timestamp {
  sudo -k
  sudo -v

  echo
}