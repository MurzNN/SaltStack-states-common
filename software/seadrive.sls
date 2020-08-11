seadrive:
  pkgrepo.managed:
    - humanname: seadrive
    - name: 'deb [arch=amd64] http://linux-clients.seafile.com/seadrive-deb/{{ grains['oscodename'] }}/ stable main'
    - file: /etc/apt/sources.list.d/seadrive.list
    - key_url: http://linux-clients.seafile.com/seafile.key
  pkg.installed:
    - pkgs:
      - seadrive-gui
