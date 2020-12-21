ferdi:
  require:
    - sls: system-settings.packages-downloaded

  file.managed:
    - name: /var/cache/packages-downloaded/ferdi.deb
    - source: https://github.com/getferdi/ferdi/releases/download/v5.6.0-beta.5/ferdi_5.6.0-beta.5_amd64.deb
    - source_hash: 96242ba8e76f95c21628da7508628afe

  pkg.installed:
    - sources:
      - ferdi: /var/cache/packages-downloaded/ferdi.deb
    - watch:
      - file: /var/cache/packages-downloaded/ferdi.deb