packages.php:
  pkg.installed:
    - pkgs:
      - php-fpm
      - php-mysql
      - php-curl
      - php-xml
      - php-zip
      - phpunit
      - php-apcu

include:
  - php.composer
