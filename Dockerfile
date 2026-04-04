FROM python:3.11-slim

LABEL maintainer="Vladimir Desyatov <hello@aisthos.dev>"
LABEL description="AisthOS — The Perception Operating System"
LABEL org.opencontainers.image.source="https://github.com/aisthos/aisthos"
LABEL org.opencontainers.image.licenses="MIT"

# System dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    ffmpeg \
    libsndfile1 \
    && rm -rf /var/lib/apt/lists/*

# Working directory
WORKDIR /app

# Copy requirements first (Docker cache optimization)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY meowbot/ ./meowbot/
COPY skills/ ./skills/
COPY memory/ ./memory/
COPY run.py .

# Create data directories
RUN mkdir -p /app/data/sparks /app/data/chromadb

# Environment defaults
ENV PYTHONUNBUFFERED=1
ENV SERVER_HOST=0.0.0.0
ENV SERVER_PORT=8765
ENV EDGE_TTS_VOICE=en-US-AriaNeural

# Expose WebSocket port
EXPOSE 8765

# Health check
HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
    CMD python -c "import urllib.request; urllib.request.urlopen('http://localhost:8765')" || exit 1

# Run
CMD ["python", "-m", "meowbot"]
