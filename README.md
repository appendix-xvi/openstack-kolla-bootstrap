# OpenStack Kolla Lab Bootstrap

This repository previously contained an **unofficial, outdated OpenStack-Ansible + Vagrant lab** based on Havana-era assumptions. That workflow is now **deprecated** and has been removed from the active path.

This repository is now a clean bootstrap kit for building a **modern OpenStack lab using Kolla-Ansible**.

## Scope and intent

- Intended for **lab/dev/bootstrap** environments.
- Not a full production platform or opinionated operations framework.
- Uses script wrappers and simple Ansible checks to keep usage predictable.

## What changed

- Old Vagrant/Havana deployment workflow removed from active usage.
- New structure centered on:
  - Kolla-Ansible inventories
  - Kolla globals/password examples
  - Host preparation and validation playbooks
  - Scripted lifecycle commands (`scripts/*.sh`)

## Quick start

1. Read prerequisites: `docs/prerequisites.md`
2. Install local prerequisites: `./scripts/install-prereqs.sh`
3. Prepare inventory (`inventory/all-in-one` or `inventory/multinode`)
4. Copy config examples:
   - `cp globals.yml.example globals.yml`
   - `cp passwords.yml.example passwords.yml`
5. Prepare hosts: `./scripts/bootstrap-hosts.sh`
6. Deploy OpenStack: `./scripts/deploy.sh`
7. Post-deploy setup: `./scripts/post-deploy.sh`

For full procedure, see `docs/deployment.md`.

## Repository layout

- `docs/`: architecture and operator workflow docs
- `inventory/`: example all-in-one and multinode inventories
- `ansible/`: prep and validation playbooks
- `scripts/`: command wrappers for Kolla-Ansible tasks
- `legacy/`: deprecated references only

## Deprecated content

Historical workflow context is retained only as a short deprecation note under `legacy/`.
