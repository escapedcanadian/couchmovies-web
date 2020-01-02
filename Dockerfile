#Couchmovies Web Container
FROM jfloff/alpine-python:latest
MAINTAINER david.brown@couchbase.com

RUN apt-get install -y git
RUN git clone https://github.com/escapedcanadian/couchmovies-web /opt/couchmovies/web

WORKDIR /opt/couchmovies/web/www

CMD python3 -m http.server 8000
EXPOSE 8000