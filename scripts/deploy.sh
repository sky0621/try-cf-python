#!/usr/bin/env bash
set -euox pipefail
SCRIPT_DIR=$(dirname "$0")
echo "${SCRIPT_DIR}"
cd "${SCRIPT_DIR}" && cd ../sandbox/sandbox

gcloud functions deploy hello_http --runtime python38 --trigger-http --allow-unauthenticated
