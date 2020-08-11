# deb custom packages

nodejs:
  pkgrepo.managed:
    - humanname: nodesource
    - name: "deb https://deb.nodesource.com/node_10.x focal main"
    - file: /etc/apt/sources.list.d/nodesource.list
    - key_url: https://deb.nodesource.com/gpgkey/nodesource.gpg.key
  pkg.installed:
    - pkgs:
      - nodejs
