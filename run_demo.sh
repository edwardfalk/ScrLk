#!/usr/bin/env bash
set -euo pipefail

# Simple runner for the AI demo face on Pi
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT_DIR"

if [[ ! -d .venv ]]; then
  echo "Missing .venv. Run: sudo bash scripts/pi5_setup.sh"
  exit 1
fi

source .venv/bin/activate

# Defaults for quick demo; override via env
export MIC_DEVICE_INDEX="${MIC_DEVICE_INDEX:-1}"
export STT_LANG="${STT_LANG:-sv-SE}"
export LLM_MODEL="${LLM_MODEL:-gpt-4o-mini}"
export TTS_MODEL="${TTS_MODEL:-gpt-4o-mini-tts}"
export TTS_VOICE="${TTS_VOICE:-alloy}"
export TTS_BACKEND="${TTS_BACKEND:-openai}"
export FULLSCREEN="${FULLSCREEN:-1}"
export ESPEAK_VOICE="${ESPEAK_VOICE:-sv+m3}"
export ESPEAK_WPM="${ESPEAK_WPM:-160}"

python3 AI/macintosh_headless.py
