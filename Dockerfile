FROM python:3.6-alpine
MAINTAINER hassan

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /scrapper
WORKDIR /scrapper
COPY ./scrapper /scrapper

RUN adduser -D user
USER user