FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt install apache2 -y
COPY index.html /var/www/html
CMD apache2ctl -D FOREGROUND
EXPOSE 80
