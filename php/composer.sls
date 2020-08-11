composer-download:
  cmd.run:
    - name: curl -sS https://getcomposer.org/installer | php
    - unless: test -f /usr/local/bin/composer
    - cwd: /root/
    - env:
      - HOME : /root

composer:
  cmd.wait:
    - name: mv /root/composer.phar /usr/local/bin/composer
    - cwd: /root/
    - watch:
      - cmd: composer-download
