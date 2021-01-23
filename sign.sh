#!/usr/bin/env bash

for f in ./**/*.secret; do
  if [ ! -f "${f%.secret}" ]; then
	  echo test
    kubeseal < "$f" > "${f%.secret}"
  fi
done
