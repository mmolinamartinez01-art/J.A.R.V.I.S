# J.A.R.V.I.S. HUD

Interfaz tipo Jarvis (núcleo, anillos y espectro) que reacciona a la voz.
Funciona con [OpenJarvis](https://github.com/open-jarvis/OpenJarvis) y voz de ElevenLabs (George).

## Solo ver la interfaz
```bash
python3 -m http.server 8765
```
Abre `http://localhost:8765/` en Chrome o Edge y pulsa **Demo** o **Activar micrófono**.

## Con OpenJarvis
1. Clona y prepara OpenJarvis: `git clone https://github.com/open-jarvis/OpenJarvis.git && cd OpenJarvis && uv sync`
2. Copia esta carpeta dentro de OpenJarvis como `jarvis-hud/`.
3. `~/.openjarvis/config.toml`:
   ```toml
   [speech]
   tts_backend = "elevenlabs"
   voice_id = "JBFqnCBsd6RMkjVDRZzb"
   ```
4. `export ELEVENLABS_API_KEY=...` y ejecuta `./jarvis-hud/start.sh`.

Necesita además un modelo de lenguaje configurado en OpenJarvis (Ollama o una API).
