FROM python:3.10-slim

WORKDIR /app

# Copy app code
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Set PYTHONPATH so internal imports work


# Expose port if needed
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
