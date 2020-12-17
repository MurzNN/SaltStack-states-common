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

php.common-settings:
  file.managed:
    - name: /etc/php/shared_conf.d/custom-common.ini
    - source: salt://php/files/custom-common.ini
    - force: true
    - preserve: true
    - keep: true
    - makedirs: true

{% set php_ini_root = salt['cmd.shell']("php -i | grep 'Configuration File (php.ini) Path' | cut -d ' ' -f 6") %}
php.common-settings-symlinks:
  file.symlink:
    - target: /etc/php/shared_conf.d/custom-common.ini
    - ignore_if_missing: True
    - names:
      - {{ php_ini_root }}/../fpm/conf.d/90-dgd.ini
      - {{ php_ini_root }}/../cli/conf.d/90-dgd.ini

include:
  - php.composer
