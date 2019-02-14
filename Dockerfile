FROM ubuntu:latest

LABEL maintainer=”safakcirag@gmail.com”

RUN apt-get update

RUN apt-get install -y npm nodejs

MKDIR /app

COPY . /app

CMD npm start

EXPOSE 8080
