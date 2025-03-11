FROM python:3.13.2

# COPY . /app

# Set the working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY app.py .

# Expose the port
EXPOSE 80

# Run the application
CMD ["python", "app.py"]

