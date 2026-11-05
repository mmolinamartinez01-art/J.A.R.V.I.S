#!/usr/bin/env bash
# Arranca el servidor de OpenJarvis y la interfaz HUD, y abre el navegador.
set -e
cd "$(dirname "$0")/.."
: "${ELEVENLABS_API_KEY:?Exporta antes ELEVENLABS_API_KEY}"
export OPENJARVIS_CORS_ORIGINS="http://localhost:8765"
uv run jarvis serve --port 8000 &
python3 -m http.server 8765 --directory jarvis-hud --bind 127.0.0.1 &
trap 'kill 0' EXIT
sleep 4
URL="http://localhost:8765/"
(xdg-open "$URL" || open "$URL") >/dev/null 2>&1 || echo "Abre $URL en Chrome"
wait
