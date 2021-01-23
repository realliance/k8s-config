#!/usr/bin/env bash

export SEALED_SECRETS_CONTROLLER_NAMESPACE=sealed-secrets
export SEALED_SECRETS_CONTROLLER_NAME=sealed-secrets

for f in ./**/*.secret; do
  if [ ! -f "${f%.secret}" ]; then
    kubeseal < "$f" > "${f%.secret}"
  fi
done
