FROM ubuntu:latest
RUN apt update && apt install apache2 -y && apt install git -y
RUN rm -rf /var/www/html
WORKDIR /var/www/html
RUN git clone https://github.com/AaronPiramide/electric-border-3.git .
EXPOSE 80
CMD [ "apache2ctl", "-D", "FOREGROUND" ]

