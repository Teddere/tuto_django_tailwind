FROM python:3.12-alpine

ENV PYTHONDONTWRITEBYCODE=1
ENV PYTHONUNBUFFERED=1
# Repertoire de travail dans le conteneur
WORKDIR /usr/src/app/
# Continuer et faire une copy
COPY requirements.txt /usr/src/app/
COPY src/ /usr/src/app/.
# Installation de dependance e
RUN apk update && apk add musl-dev gcc zlib-dev jpeg-dev
RUN pip install --upgrade pip
RUN pip install -r requirements.txt