ksnip:
  require:
    - sls: system-settings.packages-downloaded

  file.managed:
    - name: /var/cache/packages-downloaded/ksnip.deb
    - source: https://github.com/ksnip/ksnip/releases/download/v1.7.3/ksnip-1.7.3.deb
    - source_hash: 6d349aebb0cd0823196b88377313b46a

  pkg.installed:
    - sources:
      - ksnip: /var/cache/packages-downloaded/ksnip.deb
    - watch:
      - file: /var/cache/packages-downloaded/ksnip.deb
