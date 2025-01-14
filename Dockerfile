# Description: Dockerfile for the Flask API
# Specify the base image

FROM python:alpine

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contetnts into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
# This acts as documentation, because the port is not actually exposed

EXPOSE 80

# Defining commands to run the app
CMD ["python", "app.py"]