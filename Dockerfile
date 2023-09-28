FROM python:3.11

ENV PIP_ROOT_USER_ACTION=ignore

RUN pip install --upgrade pip
RUN pip install uvicorn
RUN pip install chromadb==0.4.13
RUN pip install fastapi==0.95.2
# RUN pip install --force-reinstall fastapi==0.85.1

COPY log_conf.yaml /app/
COPY server.py /app/

WORKDIR /app

CMD ["uvicorn", "server:app", "--host", "0.0.0.0", "--port", "8000","--log-config","/app/log_conf.yaml"]

