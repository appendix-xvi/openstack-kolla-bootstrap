# Prerequisites

## Deployment host

- Linux host with Bash, Python 3.10+, and sudo access.
- SSH key-based access to all target nodes.
- Internet access for package installation.

## Target hosts

- Modern supported Linux distribution for current Kolla-Ansible release.
- Passwordless or automation-friendly sudo for remote user.
- Container runtime prerequisites available (Docker packages installed by prep playbook).

## Network and sizing

- Management network reachable from deployment host.
- External network interface planned for Neutron/provider network use.
- Minimal lab resources vary by enabled services; start small and scale as needed.

## Required files to create

- `globals.yml` from `globals.yml.example`
- `passwords.yml` from `passwords.yml.example`
- Inventory choice:
  - `inventory/all-in-one`, or
  - `inventory/multinode`
