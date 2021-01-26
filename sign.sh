#!/usr/bin/env bash

export SEALED_SECRETS_CONTROLLER_NAMESPACE=sealed-secrets
export SEALED_SECRETS_CONTROLLER_NAME=sealed-secrets

for f in ./cluster/**/*.secret; do
  if [ ! -f "${f%.secret}" ]; then
    kubeseal -o yaml < "$f" > "${f%.secret}"
  fi
done
