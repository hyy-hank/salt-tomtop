{% if grains['env'] == 'prod' %}
tomtopwww_backend:
  - 172.31.36.20:80
  - 172.31.36.21:80
  
tomtopm_backend:
  - 172.31.36.20:81
  - 172.31.36.21:81

chicuuwww_backend:
  - 172.31.36.22:80
  - 172.31.36.23:80
  
chicuum_backend:
  - 172.31.36.22:81
  - 172.31.36.23:81

rcmomentwww_backend:
  - 172.31.47.14:80
  - 172.31.47.15:80

rcmomentm_backend:
  - 172.31.47.14:81
  - 172.31.47.15:81

koogeekwww_backend:
  - 172.31.41.138:80

koogeekapp_backend:
  - 172.31.41.138:8001

api01_backend:
  - 172.31.42.176
  - 172.31.42.177 

api02_backend:
  - 172.31.36.235
  - 172.31.36.236

cart_backend:
  - 172.31.36.20:8001
  - 172.31.36.21:8001

manage_backend:
  - 172.31.36.234  
{% endif %}
  

{% if grains['env'] == 'uat' %}
tomtopwww_backend:
  - 172.31.45.126:80
  
tomtopm_backend:
  - 172.31.45.126:90

chicuuwww_backend:
  - 172.31.45.126:81
  
chicuum_backend:
  - 172.31.45.126:91

rcmomentwww_backend:
  - 172.31.45.126:82

rcmomentm_backend:
  - 172.31.45.126:92

koogeekwww_backend:
  - 172.31.45.126:70

koogeekapp_backend:
  - 172.31.41.23:8001

api01_backend:
  - 172.31.47.226

api02_backend:
  - 172.31.41.23

cart_backend:
  - 172.31.45.126:8001

manage_backend:
  - 172.31.45.126
{% endif %}
