# Base Python image
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Copy requirements first to cache dependencies
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy Flask app
COPY . .

# Expose Flask port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
