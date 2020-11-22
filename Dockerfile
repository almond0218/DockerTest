FROM python:3.7-buster

WORKDIR /var/www/docker-project/

ENV DJANGO_SETTINGS_MODULE 'DockerProject.settings'

RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

RUN ./manage.py collectstatic --no-input