#!/usr/bin/env bash
set -euo pipefail

INVENTORY="${KOLLA_INVENTORY:-inventory/all-in-one}"
kolla-ansible -i "$INVENTORY" deploy
