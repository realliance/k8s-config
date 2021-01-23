#!/usr/bin/env bash

for f in ./**/*.secret; do
  if [ ! -f "${f%.secret}" ]; then
    kubeseal < "$f" > "${f%.secret}"
  fi
done
