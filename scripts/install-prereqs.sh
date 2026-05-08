#!/usr/bin/env bash
set -euo pipefail

if command -v apt-get >/dev/null 2>&1; then
  sudo apt-get update
  sudo apt-get install -y python3 python3-pip python3-venv git curl sshpass
elif command -v dnf >/dev/null 2>&1; then
  sudo dnf install -y python3 python3-pip git curl sshpass
else
  echo "Unsupported package manager. Install Python3, pip, git, curl manually." >&2
  exit 1
fi

python3 -m pip install --user --upgrade pip
python3 -m pip install --user 'ansible>=9' 'kolla-ansible>=18,<20'

echo "Prerequisites installed. Ensure ~/.local/bin is in PATH."
