FROM python:3.6.3

ENV PYTHONUNBUFFERED 1

RUN groupadd -r django \
    && useradd -r -g django django

RUN pip install django
COPY . /app

RUN chown -R django /app

USER django

WORKDIR /app

EXPOSE 5000
