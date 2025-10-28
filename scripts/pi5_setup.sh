#!/usr/bin/env bash
set -euo pipefail

# Quick setup for Raspberry Pi 5 demo
# - Installs system deps (mpg123, espeak, python3-tk, portaudio)
# - Creates venv and installs Python deps

if [[ ${EUID:-$(id -u)} -ne 0 ]]; then
  echo "Please run with sudo: sudo bash scripts/pi5_setup.sh"
  exit 1
fi

apt-get update
apt-get install -y \
  python3-venv python3-pip python3-tk \
  portaudio19-dev \
  espeak mpg123 \
  alsa-utils

# Create venv owned by current user (not root)
USER_HOME=$(getent passwd $(logname) | cut -d: -f6)
REPO_DIR=$(pwd)
VENV_DIR="$REPO_DIR/.venv"

sudo -u $(logname) bash -lc "python3 -m venv '$VENV_DIR' && source '$VENV_DIR/bin/activate' && pip install --upgrade pip && pip install -r '$REPO_DIR/requirements.txt'"

echo -e "\nDone. To activate:\n  source .venv/bin/activate\n"
