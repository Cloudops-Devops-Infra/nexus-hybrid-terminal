# Use an official, highly optimized, lightweight Python environment
FROM python:3.10-slim

# Prevent Python from writing debug .pyc files to disk and buffer logs
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Install basic system curl diagnostics safely
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install isolated application dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source scripts and visualization assets
COPY app.py .
COPY dashboard-success.png .
COPY error-diagnostics.png .

# Expose Streamlit's operational production routing port
EXPOSE 80

# Launch the custom interface dashboard directly on container startup
CMD ["streamlit", "run", "app.py", "--server.port=80", "--server.address=0.0.0.0", "--server.headless=true"]