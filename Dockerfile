FROM debian:12
RUN apt -y update && apt -y install git python3 python3-pip
RUN pip install --break-system-packages --no-cache-dir flask wheel torch numpy phonemizer inflect unidecode scipy
RUN git clone https://github.com/nerdaxic/glados-tts.git /glados-tts
RUN mkdir /glados-tts/audio
RUN apt -y install espeak-ng
WORKDIR /glados-tts
ENTRYPOINT [ "/usr/bin/python3", "engine.py"]
