lb_vhost:
{% if grains['env'] == 'prod' %}
  - cart.tomtop.com
  - newbos.tomtop-cdn.com
  - static-src.tomtop-cdn.com
  - static-src.chicuu.com
  - static-src.rcmoment.com
  - static-src.koogeek.com
  - static-src.camfere.com
  - static-src.tooarts.com
  - static-src.dodocool.com
  - www.tomtop.com
  - m.tomtop.com
  - www.chicuu.com
  - m.chicuu.com
  - www.rcmoment.com
  - m.rcmoment.com
  - www.koogeek.com
  - app.koogeek.com
  - www.camfere.com
  - m.camfere.com
  - www.tooarts.com
  - www.dodocool.com
{% elif grains['env'] == 'uat' %}
  - cartuat.tomtop.com
  - newbosuat.tomtop-cdn.com
  - staticuat.tomtop-cdn.com
  - staticuat.chicuu.com
  - staticuat.rcmoment.com
  - staticuat.koogeek.com
  - staticuat.camfere.com
  - staticuat.tooarts.com
  - staticuat.dodocool.com
  - uat.tomtop.com
  - muat.tomtop.com
  - uat.chicuu.com
  - muat.chicuu.com
  - uat.rcmoment.com
  - muat.rcmoment.com
  - uat.koogeek.com
  - stapp.koogeek.com
  - uat.camfere.com
  - muat.camfere.com
  - uat.tooarts.com
  - uat.dodocool.com
{% elif grains['env'] == 'test' %}
  - carttest.tomtop.com
  - newbostest.tomtop-cdn.com
  - statictest.tomtop-cdn.com
  - statictest.chicuu.com
  - statictest.rcmoment.com
  - statictest.koogeek.com
  - statictest.camfere.com
  - statictest.tooarts.com
  - statictest.dodocool.com
  - test.tomtop.com
  - mtest.tomtop.com
  - test.chicuu.com
  - mtest.chicuu.com
  - test.rcmoment.com
  - mtest.rcmoment.com
  - test.koogeek.com
  - apptest.koogeek.com
  - test.camfere.com
  - mtest.camfere.com
  - test.tooarts.com
  - test.dodocool.com
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
