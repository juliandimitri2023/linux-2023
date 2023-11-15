FROM ubuntu:latest

RUN apt update && apt install -y nginx 
COPY index.html /var/www/html/
COPY styles.css /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
