FROM postgres:14.1-alpine

RUN apk update && apk add nginx

# FROM openjdk:20-jdk-slim-buster

# RUN apt-get update && apt install -y maven


# VOLUME /tmp

# COPY target/*.jar app.jar

# WORKDIR /app
# COPY . /app

# RUN mvn package -DskipTests -e

# ENTRYPOINT ["java","-jar","target/yolo-core-0.0.1-SNAPSHOT.jar"]

#COPY . /app

# FROM openjdk:20-jdk-slim-buster

# COPY --from=builder /files .

COPY nginx.conf /etc/nginx/nginx.conf
RUN chown -R root:root /etc/nginx/nginx.conf
RUN chmod -R 644 /etc/nginx/nginx.conf

COPY docker-entrypoint-nginx.sh /usr/local/bin/docker-entrypoint-nginx.sh
RUN dos2unix /usr/local/bin/docker-entrypoint-nginx.sh \
    && chmod +x /usr/local/bin/docker-entrypoint-nginx.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint-nginx.sh"]


# ENTRYPOINT tail -f /dev/null
