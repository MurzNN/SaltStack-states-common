phpmyadmin:
  require:
    - sls: php.composer

  cmd.run:
    - name: composer create-project phpmyadmin/phpmyadmin
    - unless: test -f /opt/phpmyadmin/index.php
    - cwd: /opt
    - env:
      - HOME : /root

  pkg.installed:
    - pkgs:
      - php-bz2
      - php-gd
#      - php-opcache

