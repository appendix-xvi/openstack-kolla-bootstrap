# Deployment

## 1) Install local dependencies

```bash
./scripts/install-prereqs.sh
```

## 2) Select inventory

For single-node lab:

```bash
export KOLLA_INVENTORY=inventory/all-in-one
```

For multinode lab:

```bash
export KOLLA_INVENTORY=inventory/multinode
```

## 3) Prepare configuration

```bash
cp globals.yml.example globals.yml
cp passwords.yml.example passwords.yml
```

Edit values in `globals.yml` and inventory hostnames/interfaces.

## 4) Generate passwords (optional)

```bash
./scripts/generate-passwords.sh
```

## 5) Bootstrap and validate hosts

```bash
./scripts/bootstrap-hosts.sh
```

## 6) Run deployment

```bash
./scripts/deploy.sh
```

## 7) Post deploy

```bash
./scripts/post-deploy.sh
```
