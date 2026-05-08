# Cleanup

To destroy the lab deployment:

```bash
./scripts/destroy-lab.sh
```

This wraps Kolla-Ansible `destroy --yes-i-really-really-mean-it` and is intended for disposable lab environments.

After destroy:

- Remove or reset host data volumes if needed.
- Re-run `bootstrap-hosts.sh` before next fresh deployment if base packages changed.
