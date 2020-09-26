composer-download:
  cmd.run:
    - name: curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer
    - unless: test -f /usr/local/bin/composer
    - cwd: /tmp
    - env:
      - COMPOSER_HOME : /tmp
