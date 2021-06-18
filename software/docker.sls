pkg.docker:
  pkgrepo.managed:
    - humanname: docker
    - name: 'deb [arch=amd64] https://download.docker.com/linux/ubuntu {{ grains['oscodename'] }} stable'
    - file: /etc/apt/sources.list.d/docker.list
    - key_url: https://download.docker.com/linux/ubuntu/gpg
  pkg.installed:
    - pkgs:
      - docker-ce
