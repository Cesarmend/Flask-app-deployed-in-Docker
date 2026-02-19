# Use stable Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port (default for Flask)
EXPOSE 5000

# Run app with Gunicorn
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:5000"]