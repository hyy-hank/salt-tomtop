lb_vhost:
{% if grains['env'] == 'prod' %}
  - static-src.tomtop-cdn.com.conf
  - static-src.chicuu.com.conf
  - static-src.rcmoment.com.conf
  - static-src.koogeek.com.conf
{% else %}
  - static.tomtop-cdn.com.conf
  - static.chicuu.com.conf
  - static.rcmoment.com.conf
  - static.koogeek.com.conf
{% endif %}
  - www.tomtop.com.conf
  - m.tomtop.com.conf
  - www.chicuu.com.conf
  - m.chicuu.com.conf
  - www.rcmoment.com.conf
  - m.rcmoment.com.conf
  - cart.tomtop.com.conf
  - base.api.tomtop.com.conf
  - bos.tomtop-cdn.com.conf
  - member.api.tomtop.com.conf
  - product.api.tomtop.com.conf
  - advert.api.tomtop.com.conf
  - ipn.api.tomtop.com.conf
  - producer.api.tomtop.com.conf
  - consumer.api.tomtop.com.conf
  - search.api.tomtop.com.conf
  - img.api.tomtop.com.conf
  - logistics.api.tomtop.com.conf
  - loyalty.api.tomtop.com.conf
  - www.koogeek.com.conf
  - app.koogeek.com.conf

ssl_pem:
  - server_tomtop.pem
  - server_chicuu.pem
  - server_rcmoment.pem

ssl_key:
  - server_tomtop.key
  - server_chicuu.key
  - server_rcmoment.key
