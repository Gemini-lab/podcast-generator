# Use the official Python image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script and entrypoint script into the image
COPY feed.py /app/feed.py
COPY entrypoint.sh /app/entrypoint.sh

# Install PyYAML using pip
RUN pip install --no-cache-dir PyYAML

# Make sure the entrypoint script is executable
RUN chmod +x /app/entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]