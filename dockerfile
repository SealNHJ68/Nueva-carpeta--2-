# Usa una imagen base ligera de nginx
FROM nginx:alpine

# Copia el archivo HTML a la ubicación estándar de nginx
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css

# Exponer el puerto 80 para el servidor web
EXPOSE 80

# Iniciar nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
