ferdi:
  require:
    - sls: system-settings.packages-downloaded

  file.managed:
    - name: /var/cache/packages-downloaded/ferdi.deb
    - source: https://github.com/getferdi/ferdi/releases/download/5.6.0-beta.2/ferdi_5.6.0-beta.2_amd64.deb
    - source_hash: 9ffb6e0723eef0af4aa4f07594609aab

  pkg.installed:
    - sources:
      - ferdi: /var/cache/packages-downloaded/ferdi.deb
    - watch:
      - file: /var/cache/packages-downloaded/ferdi.deb