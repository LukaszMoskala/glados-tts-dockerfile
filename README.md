Unofficial dockerfile for https://github.com/nerdaxic/glados-tts

Builds available at https://hub.docker.com/repository/docker/lm389/glados-tts/general

To run, just do `docker run --rm -it -p 8124:8124 lm389/glados-tts:latest`

And then use curl to generate wav file with your audio:
```bash
curl -v 'http://127.0.0.1:8124/synthesize/hello%20there' -o output.wav
```

Or play it directly:
```bash
curl -v 'http://127.0.0.1:8124/synthesize/hello%20there' -o - | aplay
```