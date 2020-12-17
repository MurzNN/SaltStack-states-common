skype:
  pkgrepo.managed:
    - humanname: skype
    - name: deb [arch=amd64] https://repo.skype.com/deb stable main
    - file: /etc/apt/sources.list.d/skype.list
    - key_url: https://repo.skype.com/data/SKYPE-GPG-KEY
  pkg.installed:
    - pkgs:
      - skypeforlinux
