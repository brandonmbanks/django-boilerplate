FROM python:3.6-slim
ENV PYTHONUNBUFFERED 1
RUN mkdir /var/www
WORKDIR /var/www
ADD . /var/www/
RUN pip3 install -r requirements.lock