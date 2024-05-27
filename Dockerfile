# syntax=docker/dockerfile:1
FROM python:3.12.3-slim

ARG APP_ROOT=/opt

WORKDIR $APP_ROOT 

RUN apt-get update  && apt-get install -y \
    build-essential \
    openssl \
    git \
    curl \
    software-properties-common \
    && apt clean \
    && pip install --upgrade pip \
    && pip install joblib \
    && pip install psycopg \
    && pip install SQLAlchemy \
    && pip install spacy \
    && pip install streamlit \
    && pip install streamlit-authenticator \
    && pip install streamlit-oauth
