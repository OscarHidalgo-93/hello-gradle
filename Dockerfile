#Este archivo construye un contenedor desde una imagen de gradle en el Fork de la rama principarl del proyecto "helo-gradle"

#usamos una imagen de gradle que monta un open jdk11:
FROM gradle:7.1.1-jdk11
#crear un directorio de trabajo:
WORKDIR /opt/hello-gradle
#Copiar en el workdir lo de gradle
COPY ./ ./
#Correr el SpringBoot
CMD ./gradlew bootRun