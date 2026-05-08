# Architecture

## Deployment model

This lab uses Kolla-Ansible to deploy containerized OpenStack services.

### All-in-one

- Single node for controller/network/compute/storage roles.
- Suitable for quick functional testing.

### Multinode

- Separate role groups:
  - `control`
  - `network`
  - `compute`
  - `storage`
- Better for realistic topology and service isolation tests.

## Control plane assumptions

- Linux hosts with SSH connectivity from deployment host.
- Container runtime available on target hosts.
- Distinct management and external interfaces where possible.

## Non-goals

- Production hardening baseline.
- Full lifecycle Day-2 automation.
- Vendor-specific networking/storage integration.
