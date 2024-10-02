# Dockerfile
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy all application files
COPY . .

# Expose the port Flask is running on
EXPOSE 5000

# Define the entry point
CMD ["python", "app.py"]
