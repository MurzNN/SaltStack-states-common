ksnip:
  require:
    - sls: system-settings.packages-downloaded

  file.managed:
    - name: /var/cache/packages-downloaded/ksnip.deb
    - source: https://github.com/ksnip/ksnip/releases/download/v1.8.0/ksnip-1.8.0.deb
    - source_hash: 23f0fe2f2be2b87aedfc86f70472422a

  pkg.installed:
    - sources:
      - ksnip: /var/cache/packages-downloaded/ksnip.deb
    - watch:
      - file: /var/cache/packages-downloaded/ksnip.deb
