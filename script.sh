#!/bin/bash
#script.sh

# Mensaje de información al usuario
echo "Trabajo práctico de Administración de Sistemas Linux"
echo "Integrantes: Dimitri Julián, Ferrara Jonathan y Céspedes Brian"
echo "El servidor NGINX se encuentra corriendo a partir de UBUNTU"
echo "Dirección para visualizar el HTML---> localhost:8080"

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

# Dar permisos de ejecución al script.shi
chmod 777 script.sh


# Comando para iniciar NGINX
nginx -g "daemon off;"
