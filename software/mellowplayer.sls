mellowplayer:
  pkgrepo.managed:
    - humanname: mellowplayer
    - name: deb http://download.opensuse.org/repositories/home:/ColinDuquesnoy/xUbuntu_{{ grains['osrelease'] }}/ /
    - file: /etc/apt/sources.list.d/mellowplayer.list
    - key_url: https://download.opensuse.org/repositories/home:ColinDuquesnoy/xUbuntu_{{ grains['osrelease'] }}/Release.key

  pkg.installed:
    - pkgs:
      - mellowplayer
