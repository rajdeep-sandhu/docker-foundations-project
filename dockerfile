# Use a Python runtime for the base image.
FROM python:3.13.7

# Set the working directory in the container to /app
WORKDIR /app

# Copy the contents of the current directory into the container /app
COPY . /app

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Set the environment variable for Flask to app.py
ENV FLASK_APP=app.py

# Add labels to the image
LABEL "com.example.vendor"="Big Star Collectibles"
LABEL version="1.0"
LABEL description="The Big Star Collectibles Website \
using the Python base image."

# Run the command to start the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]