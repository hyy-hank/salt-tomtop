www_user:
  user.present:
    - name: www
    - createhome: False
    - gid_from_name: True
    - shell: /sbin/nologin
  
nginx_pkg:
  pkg.installed:
    - pkgs:
      - gcc
      - openssl-devel
      - pcre-devel
      - zlib-devel

nginx_cache_purge_source:
  file.managed:
    - name: /usr/local/src/ngx_cache_purge-2.3.tar.gz
    - source: salt://services/nginx/files/ngx_cache_purge-2.3.tar.gz
    - user: root
    - group: root
    - mode: 644
  cmd.run:
    - cwd: /usr/local/src
    - name: tar -xzf ngx_cache_purge-2.3.tar.gz
    - unless: test -d /usr/local/src/ngx_cache_purge-2.3
    - require:
      - file: nginx_cache_purge_source

nginx_source:
  file.managed:
    - name: /usr/local/src/nginx-1.8.1.tar.gz
    - source: salt://services/nginx/files/nginx-1.8.1.tar.gz
    - user: root
    - group: root
    - mode: 644
  cmd.run:
    - cwd: /usr/local/src
    - name: tar -xzf nginx-1.8.1.tar.gz
    - unless: test -d /usr/local/src/nginx-1.8.1
    - require:
      - file: nginx_source

nginx_compile:
  cmd.run:
    - cwd: /usr/local/src/nginx-1.8.1
    - name: ./configure --user=www --group=www --prefix=/usr/local/nginx --with-pcre --with-http_stub_status_module --with-http_ssl_module --add-module=/usr/local/src/ngx_cache_purge-2.3 && make && make install
    - requires:
      - pkg: nginx_pkg
      - cmd: nginx_source
      - cmd: nginx_cache_purge_source
    - unless: test -d /usr/local/nginx

nginx_logs_directory:
  file.directory:
    - name: /data/logs/nginx
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

nginx_vhost_directory:
  file.directory:
    - name: /usr/local/nginx/conf/vhost
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

nginx_service:
  file.managed:
    - name: /usr/lib/systemd/system/nginx.service
    - source: salt://services/nginx/files/nginx.service
    - user: root
    - mode: 755
  service.running:
    - name: nginx
    - enable: True
    - reload: True