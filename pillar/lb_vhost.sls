lb_vhost:
{% if grains['env'] == 'prod' %}
  - static-src.tomtop-cdn.com
  - static-src.chicuu.com
  - static-src.rcmoment.com
  - static-src.koogeek.com
  - static-src.camfere.com
  - www.tomtop.com
  - m.tomtop.com
  - www.chicuu.com
  - m.chicuu.com
  - www.rcmoment.com
  - m.rcmoment.com
  - www.koogeek.com
  - app.koogeek.com
  - cart.tomtop.com
  - newbos.tomtop-cdn.com
  - m.camfere.com
  - www.camfere.com
{% elif grains['env'] == 'uat' %}
  - staticuat.tomtop-cdn.com
  - staticuat.chicuu.com
  - staticuat.rcmoment.com
  - staticuat.koogeek.com
  - staticuat.camfere.com
  - uat.tomtop.com
  - muat.tomtop.com
  - uat.chicuu.com
  - muat.chicuu.com
  - uat.rcmoment.com
  - muat.rcmoment.com
  - uat.koogeek.com
  - stapp.koogeek.com
  - cartuat.tomtop.com
  - newbosuat.tomtop-cdn.com
  - muat.camfere.com
  - uat.camfere.com
{% elif grains['env'] == 'test' %}
  - statictest.tomtop-cdn.com
  - statictest.chicuu.com
  - statictest.rcmoment.com
  - statictest.koogeek.com
  - statictest.camfere.com
  - test.tomtop.com
  - mtest.tomtop.com
  - test.chicuu.com
  - mtest.chicuu.com
  - test.rcmoment.com
  - mtest.rcmoment.com
  - test.koogeek.com
  - apptest.koogeek.com
  - carttest.tomtop.com
  - newbostest.tomtop-cdn.com
  - mtest.camfere.com
  - test.camfere.com
{% endif %}
  - base.api.tomtop.com
  - member.api.tomtop.com
  - product.api.tomtop.com
  - advert.api.tomtop.com
  - ipn.api.tomtop.com
  - producer.api.tomtop.com
  - consumer.api.tomtop.com
  - search.api.tomtop.com
  - img.api.tomtop.com
  - logistics.api.tomtop.com
  - loyalty.api.tomtop.com
  - email.api.tomtop.com


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
