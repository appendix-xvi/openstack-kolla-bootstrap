#!/usr/bin/env bash
set -euo pipefail

INVENTORY="${KOLLA_INVENTORY:-inventory/all-in-one}"
kolla-ansible -i "$INVENTORY" post-deploy

if [[ -f /etc/kolla/admin-openrc.sh ]]; then
  echo "OpenStack RC file: /etc/kolla/admin-openrc.sh"
fi
