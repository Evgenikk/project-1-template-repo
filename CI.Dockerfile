# Dockerfile, который использует CI для сборки
# Сборка образа с приложением
FROM nexus/team1/alpine-openjdk8-jre:12
ARG PROJECT_ENV

COPY ./build/libs/<app_name>.jar <app_name>.jar
EXPOSE <app_port> 

ENV PROJECT_ENV=$PROJECT_ENV
ENTRYPOINT ["java", "-Dspring.profiles.active=${PROJECT_ENV}", "-jar", "<app_name>.jar"]
