#FROM phpdockerio/php72-fpm:latest
FROM php:7.2-fpm
WORKDIR "/hotcrp"

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y install php7.2-mysql php-redis php-mongodb \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Install git
RUN apt-get update \
    && apt-get -y install git \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

#RUN service sendmail start

# Install git
RUN apt-get update \
    && apt-get -y install curl ca-certificates sendmail vim \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN docker-php-ext-install mysqli

#CMD ["service", "sendmail", "restart"]

#RUN /etc/init.d/sendmail restart

#CMD sed -i '/#!\/bin\/sh/aservice sendmail restart' /usr/bin/php-fpm
#CMD sed -i '/#!\/bin\/sh/aecho "$(hostname -i)\t$(hostname) $(hostname).localhost" >> /etc/hosts' /usr/bin/php-fpm



#RUN pecl install xdebug-2.6.1 \ && docker-php-ext-enable xdebug

#COPY msmtprc /etc/msmtprc

#RUN echo "sendmail_path = /usr/bin/msmtp -t -i" >> /etc/php/7.2/fpm/conf.d/mail.ini