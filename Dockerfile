FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y apache2
COPY . /var/www/html/
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
