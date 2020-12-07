#!/usr/bin/env bash
set -euox pipefail
SCRIPT_DIR=$(dirname "$0")
echo "${SCRIPT_DIR}"
cd "${SCRIPT_DIR}" && cd ../sandbox

poetry export -f requirements.txt --without-hashes > ./sandbox/requirements.txt
