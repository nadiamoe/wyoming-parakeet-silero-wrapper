FROM python:3.13

COPY requirements.txt .
RUN --mount=type=cache,target=/root/.cache/pip pip install -r requirements.txt
COPY . .

VOLUME [ "/root/.cache/huggingface" ] # Model cache

ENTRYPOINT ["python3", "wyoming_vad_asr_server.py"]
