FROM ubuntu:16.04    
MAINTAINER uday
RUN apt-get update && apt-get install -y nginx
RUN rm -rf /var/www/html/*.*
COPY index.html /var/www/html
EXPOSE 8080 8081
VOLUME ["/var/log/nginx"]
CMD nginx -g 'daemon off;'
