{% if 'tomtopweb' in grains['roles'] and grains['env'] == 'prod' %}
tomtop_vhost:
  - www.tomtop.com.conf
  - m.tomtop.com.conf
{% elif 'tomtopweb' in grains['roles'] and grains['env'] == 'uat' %}
tomtop_vhost:
  - uat.tomtop.com.conf
  - muat.tomtop.com.conf
{% elif 'tomtopweb' in grains['roles'] and grains['env'] == 'test' %}
tomtop_vhost:
  - test.tomtop.com.conf
  - mtest.tomtop.com.conf
{% endif %}

{% if 'chicuuweb' in grains['roles'] and grains['env'] == 'prod' %}
chicuu_vhost:
  - www.chicuu.com.conf
  - m.chicuu.com.conf
{% elif 'chicuuweb' in grains['roles'] and grains['env'] == 'uat' %}
chicuu_vhost:
  - uat.chicuu.com.conf
  - muat.chicuu.com.conf
{% elif 'chicuuweb' in grains['roles'] and grains['env'] == 'test' %}
chicuu_vhost:
  - test.chicuu.com.conf
  - mtest.chicuu.com.conf
{% endif %}

{% if 'rcmomentweb' in grains['roles'] and grains['env'] == 'prod' %}
rcmoment_vhost:
  - www.rcmoment.com.conf
  - m.rcmoment.com.conf
{% elif 'rcmomentweb' in grains['roles'] and grains['env'] == 'uat' %}
rcmoment_vhost:
  - uat.rcmoment.com.conf
  - muat.rcmoment.com.conf
{% elif 'rcmomentweb' in grains['roles'] and grains['env'] == 'test' %}
rcmoment_vhost:
  - test.rcmoment.com.conf
  - mtest.rcmoment.com.conf
{% endif %}

{% if 'koogeekweb' in grains['roles'] and grains['env'] == 'prod' %}
koogeek_vhost:
  - www.koogeek.com.conf
{% elif 'koogeekweb' in grains['roles'] and grains['env'] == 'uat' %}
koogeek_vhost:
  - uat.koogeek.com.conf
{% elif 'koogeekweb' in grains['roles'] and grains['env'] == 'test' %}
koogeek_vhost:
  - test.koogeek.com.conf
{% endif %}

{% if 'camfereweb' in grains['roles'] and grains['env'] == 'prod' %}
camfere_vhost:
  - www.camfere.com.conf
  - m.camfere.com.conf
{% elif 'camfereweb' in grains['roles'] and grains['env'] == 'uat' %}
camfere_vhost:
  - uat.camfere.com.conf
  - muat.camfere.com.conf
{% elif 'camfereweb' in grains['roles'] and grains['env'] == 'test' %}
camfere_vhost:
  - test.camfere.com.conf
  - mtest.camfere.com.conf
{% endif %}