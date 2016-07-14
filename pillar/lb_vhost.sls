lb_vhost:
{% if grains['env'] == 'prod' %}
  - static-src.tomtop-cdn.com.conf
  - static-src.chicuu.com.conf
  - static-src.rcmoment.com.conf
  - static-src.koogeek.com.conf
  - www.tomtop.com.conf
  - m.tomtop.com.conf
  - www.chicuu.com.conf
  - m.chicuu.com.conf
  - www.rcmoment.com.conf
  - m.rcmoment.com.conf
  - www.koogeek.com.conf
  - app.koogeek.com.conf
  - cart.tomtop.com.conf
  - bos.tomtop.com.conf
{% elif grains['env'] == 'uat' %}
  - staticuat.tomtop-cdn.com.conf
  - staticuat.chicuu.com.conf
  - staticuat.rcmoment.com.conf
  - staticuat.koogeek.com.conf
  - uat.tomtop.com.conf
  - muat.tomtop.com.conf
  - uat.chicuu.com.conf
  - muat.chicuu.com.conf
  - uat.rcmoment.com.conf
  - muat.rcmoment.com.conf
  - uat.koogeek.com.conf
  - stapp.koogeek.com.conf
  - cartuat.tomtop.com.conf
  - bosuat.tomtop.com.conf
{% endif %}
  - base.api.tomtop.com.conf
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


ssl_pem:
  - server_tomtop.pem
  - server_chicuu.pem
  - server_rcmoment.pem

ssl_key:
  - server_tomtop.key
  - server_chicuu.key
  - server_rcmoment.key
