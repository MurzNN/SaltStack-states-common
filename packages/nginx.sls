packages.nginx:
  pkg.installed:
    - pkgs:
      - nginx

  file.recurse:
    - name: /etc/nginx/snippets
    - source: salt://packages/nginx/snippets
