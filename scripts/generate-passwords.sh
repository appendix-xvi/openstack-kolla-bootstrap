#!/usr/bin/env bash
set -euo pipefail

if [[ ! -f passwords.yml ]]; then
  cp passwords.yml.example passwords.yml
fi

kolla-genpwd -p passwords.yml
