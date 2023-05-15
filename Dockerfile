#CYRIL
FROM ubuntu:18.04
LABEL maintainer='c.leblanc@groupe-uneo.fr'
RUN apt-get update
RUN apt-get install -y nginx git
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
