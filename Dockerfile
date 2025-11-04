FROM amazoncorretto:17.0.8-alpine3.18
EXPOSE 8080
ENV APP_HOME /usr/src/app
COPY target/*.jar $APP_HOME/app.jar
WORKDIR $APP_HOME
CMD ["java", "-jar", "app.jar"]

# Multi stage docker build

#From maven:3.8.5-openjdk-17 AS build
#WORKDIR /build
#COPY . .
#RUN mvn clean package

#FROM eclipse-temurin:17-jdk-alpine
#EXPOSE 8080
#ENV APP_HOME /usr/src/app
#COPY --from=build /build/target/*.jar $APP_HOME/app.jar
#WORKDIR $APP_HOME
#ENTRYPOINT ["java", "-jar", "app.jar"]
