packages.php:
  pkg.installed:
    - pkgs:
      - nginx
      - php-fpm
      - php-mysql
      - php-curl
      - php-xml
      - php-zip
      - phpunit

packages.php.composer:
  cmd.run:
    - name: 'CURL=`which curl`; $CURL -sS https://getcomposer.org/installer | php; mv /root/composer.phar /usr/local/bin/composer'
    - unless: test -f /usr/local/bin/composer
    - cwd: /root/
