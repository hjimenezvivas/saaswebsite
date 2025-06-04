# Usamos la imagen oficial de NGINX como base
FROM nginx:alpine

# Copiamos el contenido de la app al directorio por defecto de NGINX
COPY . /usr/share/nginx/html

# Expone el puerto 8080
EXPOSE 8080

# Reemplazamos el archivo default.conf para escuchar en el puerto 8080
RUN sed -i 's/80;/8080;/g' /etc/nginx/conf.d/default.conf