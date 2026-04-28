# Imagen base oficial
FROM quay.io/keycloak/keycloak:latest

# Copiamos la carpeta de temas de nuestro repositorio al directorio de temas de Keycloak
COPY ./themes /opt/keycloak/themes

# Compilamos Keycloak para incluir los temas y optimizar el inicio
RUN /opt/keycloak/bin/kc.sh build

# Puerto estándar
EXPOSE 8080

# Comando de inicio
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
