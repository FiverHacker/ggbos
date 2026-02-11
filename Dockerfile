FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Install JupyterLab
RUN pip install --no-cache-dir jupyterlab

# Expose port
EXPOSE 8080

# Start JupyterLab (NO TOKEN)
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
