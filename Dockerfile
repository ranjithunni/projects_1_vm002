FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install systemctl -y
RUN apt-get clean
COPY index.html /var/www/html
ENTRYPOINT systemctl start apache2 && /bin/bash 
