FROM ubuntu:20.04

RUN apt update && apt install -y nginx 
COPY index.html /var/www/html/
COPY styles.css /var/www/html/
COPY script.sh /script.sh
RUN echo "0" > contador.txt
RUN chmod 777 script.sh
EXPOSE 80
CMD ["/script.sh"]
