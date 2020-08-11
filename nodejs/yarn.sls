yarn:
  pkgrepo.managed:
    - humanname: yarn
    - name: "deb https://dl.yarnpkg.com/debian/ stable main"
    - file: /etc/apt/sources.list.d/yarn.list
    - key_url: https://dl.yarnpkg.com/debian/pubkey.gpg
  pkg.installed:
    - pkgs:
      - yarn
