FROM drupal:9

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html/themes

RUN git clone --branch 8.x-4.x --single-branch --depth 1 https://git.drupalcode.org/project/bootstrap.git \
    && chown -R www-data:www-data bootstrap

WORKDIR /var/www/html


#The subsequent chown -R www-data:www-data bootstrap command changes the ownership of this bootstrap directory and its contents to the www-data user and group, which is typically used by web servers to access and serve files.




