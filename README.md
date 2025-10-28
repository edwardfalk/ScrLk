# ScrLk

## Pi 5 Quickstart (Demo)

Requirements:
- Raspberry Pi OS with working audio out to analog board (DPI already set up)
- Microphone connected (Sandberg USB typically at index 1)
- An OpenAI API key exported as `OPENAI_API_KEY` (optional if using local espeak)

Setup (first time):
```bash
sudo bash scripts/pi5_setup.sh
```

Run the demo UI:
```bash
export OPENAI_API_KEY=sk-...
./run_demo.sh
```

Notes:
- Press ESC to quit the fullscreen UI
- Env overrides: `MIC_DEVICE_INDEX`, `STT_LANG` (default `sv-SE`), `TTS_BACKEND` (`openai`|`espeak`), `FULLSCREEN` (`1` or `0`), `ESPEAK_VOICE` (e.g. `sv`, `sv+f3`, `en-us`, `en-uk`), `ESPEAK_WPM` (default `160`), `TTS_VOICE` (OpenAI voice e.g. `alloy`, `verse`)
- Examples:
  - Local Swedish female: `ESPEAK_VOICE=sv+f3 ./run_demo.sh`
  - Local UK English: `STT_LANG=en-GB ESPEAK_VOICE=en-uk ./run_demo.sh`
  - OpenAI voice: `TTS_BACKEND=openai TTS_VOICE=verse ./run_demo.sh`
- If no API key or `TTS_BACKEND=espeak`, voice uses local `espeak`

AI entrypoint: `AI/macintosh_headless.py`
