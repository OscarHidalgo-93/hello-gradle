#Este archivo construye un contenedor desde una imagen de gradle en el Fork de la rama principarl del proyecto "helo-gradle"

#usamos una imagen de gradle que monta un open jdk11:
FROM gradle:7.1.1-jdk11
#crear un directorio de trabajo:
WORKDIR /opt/hello-gradle
#Copiar en el workdir lo de gradle
COPY ./ ./
#COPY build/libs/demo-0.0.1-SNAPSHOT.jar ./
#Correr el SpringBoot
#CMD ./gradlew bootRun 
#RUN ./gradlew assemble --> generar el .jar
#RUN ./gradlew assemble
RUN ./gradlew assemble \
  && rm -rf /root/.gradle 
  
CMD java -jar build/libs/demo-0.0.1-SNAPSHOT.jar
# java -jar build/libs/demo-0.0.1-SNAPSHOT.jar | Para hacerlo desde el ejecutable pre creado.

###########################################################################################


#Añadir ahora una imagen de mariabd
#FROM mariadb:10.6.3-focal
#WORKDIR /opt/hello-gradle/mariadb
#COPY --from mariadb:10 ./

#Correr un comando para que buildee un maria db




