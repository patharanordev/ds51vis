FROM python:3.7.10-slim-buster

USER root

WORKDIR /app

COPY sample.py .

RUN apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade -y && \
    apt-get install -y htop wget curl

RUN pip install --upgrade pip setuptools wheel && \
    pip install fiftyone fiftyone-desktop

RUN chmod +x /app/sample.py

EXPOSE 5151

CMD ["python", "/app/sample.py"]