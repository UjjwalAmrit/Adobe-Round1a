# Use a slim official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install system dependencies (if needed)
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy source code and folders
COPY . .

# Ensure folders exist inside container
RUN mkdir -p /app/pdfs /app/cache /app/outputs

# Run script
CMD ["python", "1a.py"]
