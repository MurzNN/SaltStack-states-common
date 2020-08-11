anydesk:
  pkgrepo.managed:
    - humanname: anydesk-stable
    - name: deb http://deb.anydesk.com/ all main
    - file: /etc/apt/sources.list.d/anydesk-stable.list
#    - keyid: 89DF5277
#    - keyserver: keys.gnupg.net
    - key_url: https://keys.anydesk.com/repos/DEB-GPG-KEY
  pkg.installed:
    - pkgs:
      - anydesk
