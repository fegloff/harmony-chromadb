FROM python:3.8
RUN pip install uvicorn
RUN pip install chromadb==0.3.25
RUN pip install --force-reinstall fastapi==0.85.1

COPY log_conf.yaml /app/
COPY server.py /app/

# Set the working directory to /app
WORKDIR /app

# COPY server.py .
CMD ["uvicorn", "server:app", "--host", "0.0.0.0", "--port", "8000","--log-config","/app/log_conf.yaml"]