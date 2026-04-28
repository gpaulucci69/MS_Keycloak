FROM quay.io/keycloak/keycloak:latest

# Copiar tus temas personalizados
COPY themes/ /opt/keycloak/themes/

# Definir variables de entorno para que Keycloak sepa dónde buscar
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin
# Optimizar el build (requerido en versiones recientes)
RUN /opt/keycloak/bin/kc.sh build

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
