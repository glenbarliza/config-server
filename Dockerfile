# Usa Java 17 oficial optimizado para producción
FROM eclipse-temurin:17-jdk-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia el .jar construido al contenedor
ARG JAR_FILE=target/config-server-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# Expone el puerto
EXPOSE 8888

# Comando que ejecuta la app
ENTRYPOINT ["java", "-jar", "/app/app.jar", "--spring.profiles.active=docker"]
