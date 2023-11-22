#Defino cuál va a ser la imagen base del Docker
FROM ubuntu:20.04
#Actualizo los paquetes disponibles e instalo Nginx
RUN apt update && apt install -y nginx 
#Copio los archivos html, css y el script
COPY index.html /var/www/html/
COPY ubuntu.jpg /var/www/html/
COPY docker.png /var/www/html/
COPY styles.css /var/www/html/
COPY script.sh /script.sh
#Creo un archivo contador.txt y le paso un 9
RUN echo "0" > contador.txt
#Le otorgo los permisos al script
RUN chmod 777 script.sh
#Informo a Docker que el contenedor va a utilizar el port 80
EXPOSE 80
#Ejecuto el script
CMD ["/script.sh"]
