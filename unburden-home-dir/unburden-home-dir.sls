unburden-home-dir-folder:
  file.directory:
    - name:  /var/cache/unburden-home-dir
    - user:  root
    - group: root
    - mode:  777

unburden-home-dir:
  pkg.installed:
    - pkgs:
      - unburden-home-dir
  file.managed:
    - force: true
    - preserve: true
    - keep: true
    - user: root
    - group: root
    - mode: 644
    - makedirs: true
    - names:
      - /etc/unburden-home-dir:
        - source: salt://unburden-home-dir/files/unburden-home-dir
      - /etc/unburden-home-dir.list:
        - source: salt://unburden-home-dir/files/unburden-home-dir.list
      - /etc/default/unburden-home-dir:
        - source: salt://unburden-home-dir/files/default_unburden-home-dir
