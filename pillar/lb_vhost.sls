lb_vhost:
{% if grains['env'] == 'prod' %}
  - static-src.tomtop-cdn.com.conf
  - static-src.chicuu.com.conf
  - static-src.rcmoment.com.conf
  - static-src.koogeek.com.conf
  - static-src.camfere.com.conf
  - www.tomtop.com.conf
  - m.tomtop.com.conf
  - www.chicuu.com.conf
  - m.chicuu.com.conf
  - www.rcmoment.com.conf
  - m.rcmoment.com.conf
  - www.koogeek.com.conf
  - app.koogeek.com.conf
  - cart.tomtop.com.conf
  - newbos.tomtop-cdn.com.conf
  - m.camfere.com.conf
  - www.camfere.com.conf
{% elif grains['env'] == 'uat' %}
  - staticuat.tomtop-cdn.com.conf
  - staticuat.chicuu.com.conf
  - staticuat.rcmoment.com.conf
  - staticuat.koogeek.com.conf
  - staticuat.camfere.com.conf
  - uat.tomtop.com.conf
  - muat.tomtop.com.conf
  - uat.chicuu.com.conf
  - muat.chicuu.com.conf
  - uat.rcmoment.com.conf
  - muat.rcmoment.com.conf
  - uat.koogeek.com.conf
  - stapp.koogeek.com.conf
  - cartuat.tomtop.com.conf
  - newbosuat.tomtop-cdn.com.conf
  - muat.camfere.com.conf
  - uat.camfere.com.conf
{% elif grains['env'] == 'test' %}
  - statictest.tomtop-cdn.com.conf
  - statictest.chicuu.com.conf
  - statictest.rcmoment.com.conf
  - statictest.koogeek.com.conf
  - statictest.camfere.com.conf
  - test.tomtop.com.conf
  - mtest.tomtop.com.conf
  - test.chicuu.com.conf
  - mtest.chicuu.com.conf
  - test.rcmoment.com.conf
  - mtest.rcmoment.com.conf
  - test.koogeek.com.conf
  - apptest.koogeek.com.conf
  - carttest.tomtop.com.conf
  - newbostest.tomtop-cdn.com.conf
  - mtest.camfere.com.conf
  - test.camfere.com.conf
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
  - email.api.tomtop.com.conf


ssl_pem:
  - server_tomtop.pem
  - server_chicuu.pem
  - server_rcmoment.pem
  - server_camfere.pem
  - server_tooarts.pem

ssl_key:
  - server_tomtop.key
  - server_chicuu.key
  - server_rcmoment.key
  - server_camfere.key
  - server_tooarts.key
