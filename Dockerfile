# Use an official slim Python base image
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy all files from your local project directory to /app
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make sure Python can find all modules from /app askjfjewn
ENV PYTHONPATH="${PYTHONPATH}:/app"

# Expose the port your app runs on (change if different)
EXPOSE 5000

# Run the main application
CMD ["python", "app.py"]
