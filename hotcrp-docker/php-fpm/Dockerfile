FROM phpdockerio/php7-fpm:latest

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install git php7.0-mysql php7.0-bz2 php7.0-gd  \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*


WORKDIR "/var/www/hotcrp"


# RUN git clone https://github.com/mthz/hotcrp /var/www/hotcrp
# RUN /var/www/hotcrp/lib/createdb.sh --dbuser=user,user --user=user --password=user


RUN echo -e “$(hostname -i)\t$(hostname) $(hostname).localhost”
