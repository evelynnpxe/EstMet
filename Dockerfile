# syntax=docker/dockerfile:1
FROM alpine:latest

# Crear la carpeta /app si no existe
RUN mkdir -p /app

# Copiar el script run.sh a /app
COPY run.sh /app/run.sh

# Dar permisos de ejecución al script
RUN chmod +x /app/run.sh

# Establecer el punto de entrada
ENTRYPOINT ["/app/run.sh"]
