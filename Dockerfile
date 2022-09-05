FROM ubuntu
LABEL AUTHOR Geovanie
RUN apt-get update -y
RUN apt-get install net-tools -y
RUN apt-get install finger -y
RUN apt-get install wget -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
RUN rm -rf /var/www/html/*
COPY ./battleboat/* /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

