FROM alpine:latest
MAINTAINER Jacob Sanford <libsystems_at_unb.ca>

LABEL vcs-ref="8.x-1.x"
LABEL vcs-url="https://github.com/JacobSanford/drupal-check"

# Install required packages, libraries.
RUN apk --no-cache add \
  curl \
  git \
  php7 \
  php7-curl \
  php7-dom \
  php7-fpm \
  php7-gd \
  php7-iconv \
  php7-json \
  php7-mbstring \
  php7-mcrypt \
  php7-openssl \
  php7-pdo \
  php7-phar \
  php7-session \
  php7-simplexml \
  php7-tokenizer \
  php7-xml \
  php7-xmlwriter \
  php7-zlib

# Install drupal.
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
  composer create-project drupal-composer/drupal-project /drupal --no-interaction --stability=dev

# Install drupal-check.
RUN curl -sLO  https://github.com/mglaman/drupal-check/releases/latest/download/drupal-check.phar && \
  chmod 755 drupal-check.phar && \
  mv drupal-check.phar /usr/local/bin/drupal-check

ENTRYPOINT ["drupal-check"]
