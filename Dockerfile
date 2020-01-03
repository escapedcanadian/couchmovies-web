#Couchmovies Web Container
FROM jfloff/alpine-python:latest
MAINTAINER david.brown@couchbase.com

RUN mkdir -p /opt/couchmovies/web/www
COPY www /opt/couchmovies/web/www
WORKDIR /opt/couchmovies/web/www

CMD python3 -m http.server 8000
EXPOSE 8000
