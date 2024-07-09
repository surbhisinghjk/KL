# Use a base image
FROM python:3.9.16-slim-buster

# Set working directory inside the container
WORKDIR /app

# Copy your application code
COPY . .

# Install any dependencies if needed
RUN pip install -r requirements.txt

# Copy any necessary scripts (if applicable)
COPY bgmi /app/bgmi

# Copy the setup script and make it executable
RUN chmod -R 755 /app

# Explicitly set execute permission for bgmi
RUN chmod +x /app/bgmi

# Verify permissions
RUN ls -l /app

# Run setup script to set permissions
RUN /app/setup.sh

# Set the command to run your Python script
CMD ["python", "m.py"]
