# Create a Dockerfile to containerize the llama.py application.

# Dockerfile
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy application code
COPY llama.py requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the application port
EXPOSE 8501

# Command to run the application
CMD ["streamlit", "run", "llama.py"]
