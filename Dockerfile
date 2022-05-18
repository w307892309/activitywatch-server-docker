FROM python:3.9-slim-bullseye

WORKDIR /activitywatch

RUN apt-get update \
    && apt-get install -y curl unzip libgl1-mesa-glx \
    && apt-get autoremove -y \
    && apt-get clean all

RUN curl -L -o /tmp/activitywatch.zip https://github.com/ActivityWatch/activitywatch/releases/download/v0.11.0/activitywatch-v0.11.0-linux-x86_64.zip \
    && unzip /tmp/activitywatch.zip -d / \
    && rm /tmp/activitywatch.zip
