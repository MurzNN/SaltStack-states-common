include:
  - system-settings.packages-downloaded-storage

phpmyadmin:

  # file.directory:
  #   - user: root
  #   - group: root
  #   - mode: 755

  pkg.installed:
    - pkgs:
      - php-bz2
      - php-gd

  file.managed:
    - require:
      - sls: system-settings.packages-downloaded-storage
    - name: /var/cache/packages-downloaded/phpMyAdmin-latest.zip
    - source: https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.zip
    - source_hash: https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.zip.sha256

  cmd.run:
    - name: "unzip -q /var/cache/packages-downloaded/phpMyAdmin-latest.zip -d /tmp/phpmyadmin-dist; rsync -r /tmp/phpmyadmin-dist/*/ '/opt/phpmyadmin/' --delete --exclude=config.inc.php; rm -rf /tmp/phpmyadmin-dist"
    - watch:
      - file: /var/cache/packages-downloaded/phpMyAdmin-latest.zip

# phpmyadmin-config:
#   file.directory:
#     - user: root
#     - group: root
#     - mode: 755

phpmyadmin-config:
  file.managed:
    - name: /opt/phpmyadmin/config.inc.php
    - contents:
      - <?php
      -  "$cfg['LoginCookieValidity'] = 60 * 60 * 24 * 3;  // 3 days"
      -  "$cfg['RetainQueryBox'] = 1"
