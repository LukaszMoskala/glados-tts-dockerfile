Unofficial dockerfile for https://github.com/nerdaxic/glados-tts

Builds available at https://hub.docker.com/repository/docker/lm389/glados-tts/general

To run, just do `docker run --rm -it -p 8124:8124 lm389/glados-tts:latest`. This should also work on nvidia GPU if you give it to container

If it crashes, try non-avx2 version: `docker run --rm -it -p 8124:8124 lm389/glados-tts:no-avx2` (note: it's about 2.5 times slower)

Quick benchmark shows that the same sentence took:
 - 324 ms on GTX970 (used 191MiB VRAM)
 - 4309 ms on i5-4670K with avx2
 - 11109 ms on i5-4670K without avx2

And then use curl to generate wav file with your audio:
```bash
curl -v 'http://127.0.0.1:8124/synthesize/hello%20there' -o output.wav
```

Or play it directly:
```bash
curl -v 'http://127.0.0.1:8124/synthesize/hello%20there' -o - | aplay
```