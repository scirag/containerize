FROM ubuntu:latest

LABEL maintainer=”safakcirag@gmail.com”

RUN apt-get update

RUN apt-get install -y npm nodejs

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN npm install

EXPOSE 8080

CMD npm start

