FROM ubuntu:20.04

RUN apt update && apt install -y nginx 
RUN echo El servidor NGINX  se encuentra corriendo
RUN echo Dirección: localhost:8080
COPY index.html /var/www/html/
COPY styles.css /var/www/html/
COPY script.sh /script.sh
RUN echo "0" > contador.txt
RUN chmod +x /script.sh
EXPOSE 80
CMD ["/script.sh"]
