{% if 'tomtopweb' in grains['roles'] and grains['env'] == 'prod' %}
tomtop_vhost:
  - www.tomtop.com.conf
  - m.tomtop.com.conf
{% elif 'tomtopweb' in grains['roles'] and grains['env'] == 'uat' %}
tomtop_vhost:
  - uat.tomtop.com.conf
  - muat.tomtop.com.conf
{% endif %}

{% if 'chicuuweb' in grains['roles'] and grains['env'] == 'prod' %}
chicuu_vhost:
  - www.chicuu.com.conf
  - m.chicuu.com.conf
{% elif 'chicuuweb' in grains['roles'] and grains['env'] == 'uat' %}
chicuu_vhost:
  - uat.chicuu.com.conf
  - muat.chicuu.com.conf
{% endif %}

{% if 'rcmomentweb' in grains['roles'] and grains['env'] == 'prod' %}
rcmoment_vhost:
  - www.rcmoment.com.conf
  - m.rcmoment.com.conf
{% elif 'rcmomentweb' in grains['roles'] and grains['env'] == 'uat' %}
rcmoment_vhost:
  - uat.rcmoment.com.conf
  - muat.rcmoment.com.conf
{% endif %}

{% if 'koogeekweb' in grains['roles'] and grains['env'] == 'prod' %}
koogeek_vhost:
  - www.koogeek.com.conf
{% elif 'koogeekweb' in grains['roles'] and grains['env'] == 'uat' %}
koogeek_vhost:
  - uat.koogeek.com.conf
{% endif %}

{% if 'camfereweb' in grains['roles'] and grains['env'] == 'prod' %}
camfere_vhost:
  - www.camfere.com.conf
{% elif 'camferekweb' in grains['roles'] and grains['env'] == 'uat' %}
camfere_vhost:
  - uat.camfere.com.conf
{% endif %}