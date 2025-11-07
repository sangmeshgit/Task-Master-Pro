FROM amazoncorretto:17.0.8-alpine3.18
EXPOSE 8080
ENV APP_HOME /usr/src/app
COPY target/*.jar $APP_HOME/app.jar
WORKDIR $APP_HOME
CMD ["java", "-jar", "app.jar"]

# Multi stage docker build

#From maven:3.9.4-eclipse-temurin-17-alpine AS build
#COPY . .
#RUN mvn clean package

#FROM eclipse-temurin:17-jdk-alpine
#COPY --from=build /target/*.jar app.jar
#ENTRYPOINT ["java", "-jar", "app.jar"]            
