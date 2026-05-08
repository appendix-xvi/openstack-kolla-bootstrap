# OpenStack Kolla Lab Bootstrap

A bootstrap kit for building a modern OpenStack lab with Kolla-Ansible.

This repository provides a clean, script-driven workflow for preparing hosts, validating prerequisites, and running Kolla-Ansible deployment steps in a lab or development environment.

## Scope

This project is intended for:

- OpenStack lab and development environments
- Kolla-Ansible bootstrap practice
- Host preparation and validation workflows
- Repeatable deployment command wrappers

It is not intended to be a full production operations framework.

## What This Repository Provides

- Kolla-Ansible inventory examples
- Example `globals.yml` and `passwords.yml` configuration files
- Host preparation and validation playbooks
- Script wrappers for common deployment lifecycle commands
- Deprecated legacy references kept separately for historical context

## Quick Start

1. Review the prerequisites:

   ```bash
   docs/prerequisites.md
   ```

2. Install local prerequisites:

   ```bash
   ./scripts/install-prereqs.sh
   ```

3. Prepare an inventory file:

   ```bash
   inventory/all-in-one
   # or
   inventory/multinode
   ```

4. Copy the configuration examples:

   ```bash
   cp globals.yml.example globals.yml
   cp passwords.yml.example passwords.yml
   ```

5. Prepare the target hosts:

   ```bash
   ./scripts/bootstrap-hosts.sh
   ```

6. Deploy OpenStack:

   ```bash
   ./scripts/deploy.sh
   ```

7. Run post-deployment setup:

   ```bash
   ./scripts/post-deploy.sh
   ```

For the full procedure, see `docs/deployment.md`.

## Repository Layout

```text
docs/       Architecture notes and operator workflow documentation
inventory/  Example all-in-one and multinode inventories
ansible/    Host preparation and validation playbooks
scripts/    Command wrappers for Kolla-Ansible tasks
legacy/     Deprecated workflow references retained for context
```

## Operational Notes

- Treat this repository as a lab bootstrap reference, not a hardened production baseline.
- Review all network, storage, password, and TLS settings before adapting it to a real environment.
- Keep environment-specific values out of version control unless they are sanitized examples.

## Deprecated Content

Older OpenStack-Ansible and Vagrant-based workflow references are no longer part of the active deployment path. Historical context is retained only under `legacy/`.
