/swapfile:
  cmd.run:
    - name: |
        [ -f /swapfile ] || ( dd if=/dev/zero of=/swapfile bs=1M count=4096; chmod 0600 /swapfile; mkswap /swapfile; swapon -a )
    - unless:
      - swapon -s | grep /swapfile
  mount.swap:
    - persist: true
