FROM python:3.9.16-slim-buster

# Set working directory inside the container
WORKDIR /app

# Copy just the requirements file first to leverage Docker cache
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Set the command to run your Python script
CMD ["python", "m.py"]
