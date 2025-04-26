# Use the official Python image from the DockerHub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install dependencies manually (e.g., Flask, transformers)
RUN pip install Flask==2.2.3 transformers==4.29.0 torch==2.0.0

# Expose the port the app runs on
EXPOSE 5000

# Set the environment variable for Flask
ENV FLASK_APP=run.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run the Flask app
CMD ["flask", "run"]
