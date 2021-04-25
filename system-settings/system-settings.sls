lvm-suppress-fd-warnings:
  # file.managed:
  #   - name: /etc/environment.d/lvm-suppress-fd-warnings.conf
  #   - contents:
  #     - LVM_SUPPRESS_FD_WARNINGS=1
  file.append:
    - name: /etc/environment
    # - text:
    #   - LVM_SUPPRESS_FD_WARNINGS=1
    - text: |
        # Disable "leaked" warnings
        LVM_SUPPRESS_FD_WARNINGS=1

firefox-use-kde-dialogs:
  # file.managed:
  #   - name: /etc/environment.d/firefox-use-kde-dialogs.conf
  #   - contents:
  #     - '# Support native KDE open/save dialogs in Firefox https://phabricator.kde.org/T10189'
  #     - GTK_USE_PORTAL=1
  file.append:
    - name: /etc/environment
    - text: |
        # Support native KDE open/save dialogs in Firefox https://phabricator.kde.org/T10189
        GTK_USE_PORTAL=1

mc-default-internal-editor:
    ini.options_present:
    - name: /etc/mc/mc.ini
    - separator: '='
    - sections:
        'Midnight-Commander':
          use_internal_edit: 1
          use_internal_view: 1

tmux-mouse-mode:
  file.append:
    - name: /etc/tmux.conf
    - text: set -g mouse on
