# Operations

## Common operations

### Re-run prechecks

```bash
kolla-ansible -i ${KOLLA_INVENTORY:-inventory/all-in-one} prechecks
```

### Reconfigure

```bash
kolla-ansible -i ${KOLLA_INVENTORY:-inventory/all-in-one} reconfigure
```

### Upgrade planning

Use upstream Kolla-Ansible upgrade docs for your release. Validate release compatibility before any upgrade tests.

## Logs

- Kolla and service containers: target hosts under standard container logs.
- Ansible execution logs: terminal output or CI artifacts if wrapped by pipeline.
