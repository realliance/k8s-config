#!/usr/bin/env bash

for f in ./**/*.secret; do
  kubeseal < "$f" > "${f%.secret}"
done
