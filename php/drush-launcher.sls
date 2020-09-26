drush-launcher:
  cmd.run:
    - name: wget -O /usr/local/bin/drush https://github.com/drush-ops/drush-launcher/releases/latest/download/drush.phar && chmod +x /usr/local/bin/drush
    - unless: test -f /usr/local/bin/drush
