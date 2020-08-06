# deb custom packages

packages.nodejs:
  pkgrepo.managed:
    - humanname: nodesource
    - name: "deb https://deb.nodesource.com/node_12.x focal main"
    - file: /etc/apt/sources.list.d/nodesource.list
    - key_url: https://deb.nodesource.com/gpgkey/nodesource.gpg.key
  pkg.installed:
    - pkgs:
      - nodejs
    
yarn:
  pkgrepo.managed:
    - humanname: yarn
    - name: "deb https://dl.yarnpkg.com/debian/ stable main"
    - file: /etc/apt/sources.list.d/yarn.list
    - key_url: https://dl.yarnpkg.com/debian/pubkey.gpg
  pkg.installed:
    - pkgs:
      - yarn
