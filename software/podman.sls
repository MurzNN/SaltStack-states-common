pkg.podman:
  pkgrepo.managed:
    - humanname: podman
    - name: 'deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_{{ grains['osrelease'] }}/ /'
    - file: /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list
    - key_url: https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_{{ grains['osrelease'] }}/Release.key
  pkg.installed:
    - pkgs:
      - podman
