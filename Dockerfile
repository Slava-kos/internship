# Pull base image.
FROM ubuntu:20.04

LABEL maintainer="Slava"
ARG DEVOPS
ENV DEVOPS="SVIATASLAU!"
# Install updates to base image
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update \
    && apt-get upgrade -y

EXPOSE 80

RUN  apt-get install apache2 -y
#ENTRYPOINT ["/usr/sbin/apache2", "-k", "start"]
CMD echo  $DEVOPS > /var/www/html/index.html && apachectl -D FOREGROUND
