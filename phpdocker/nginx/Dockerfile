FROM nginx:alpine

ENV DOCKERIZE_VERSION v0.2.0
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz
RUN tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz
COPY run-dockerize.sh /docker-entrypoint.d/
#ENTRYPOINT ["dockerize", "-wait", "tcp://hotcrp-php-fpm:9000", "-timeout", "20s"]
