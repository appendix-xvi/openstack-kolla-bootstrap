#!/usr/bin/env bash
set -euo pipefail

INVENTORY="${KOLLA_INVENTORY:-inventory/all-in-one}"
ansible-playbook -i "$INVENTORY" ansible/prepare-hosts.yml
ansible-playbook -i "$INVENTORY" ansible/validate-hosts.yml
kolla-ansible -i "$INVENTORY" bootstrap-servers
kolla-ansible -i "$INVENTORY" prechecks
