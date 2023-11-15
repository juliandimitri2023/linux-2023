#!/bin/bash

# Actualizar el sistema e instalar NGINX
#apt-get update
#apt-get install -y nginx

# Mensaje de estado
echo "El servidor NGINX se encuentra corriendo"
echo "Dirección: localhost:8080"
# Ruta del archivo de contador
CONTADOR_FILE="/datos/contador.txt"

# Verificar si el archivo de contador existe
if [ -f "$CONTADOR_FILE" ]; then
    # Leer el contador actual
    CONTADOR=$(cat "$CONTADOR_FILE")
else
    # Si el archivo no existe, iniciar el contador en 0
    CONTADOR=0
fi

# Incrementar el contador
CONTADOR=$((CONTADOR+1))

# Guardar el nuevo valor del contador
echo "$CONTADOR" > "$CONTADOR_FILE"

# Imprimir mensaje con el valor del contador
echo "Este contenedor ha sido ejecutado $CONTADOR veces."
# Copiar archivos HTML y CSS
#cp /script/index.html /var/www/html/
#cp /script/styles.css /var/www/html/

# Dar permisos de ejecución al script.sh
chmod +x /script.sh

# Exponer el puerto 80
#EXPOSE 80

# Comando para iniciar NGINX
nginx -g "daemon off;"
