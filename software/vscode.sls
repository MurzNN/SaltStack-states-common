vscode:
  pkgrepo.managed:
    - humanname: vscode
    - name: deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main
    - file: /etc/apt/sources.list.d/vscode.list
    - key_url: https://packages.microsoft.com/keys/microsoft.asc
  pkg.installed:
    - pkgs:
      - code
