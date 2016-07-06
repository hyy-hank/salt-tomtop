{% if 'tomtopweb' in grains['roles'] and grains['env'] == 'prod' %}
tomtop_vhost:
  - www.tomtop.com.conf
  - m.tomtop.com.conf
{% elif 'tomtopweb' in grains['roles'] and grains['env'] == 'uat' %}
tomtop_vhost:
  - uat.tomtop.com.conf
  - uat-m.tomtop.com.conf
{% endif %}

{% if 'chicuuweb' in grains['roles'] and grains['env'] == 'prod' %}
chicuu_vhost:
  - www.chicuu.com.conf
  - m.chicuu.com.conf
{% elif 'chicuuweb' in grains['roles'] and grains['env'] == 'uat' %}
chicuu_vhost:
  - uat.chicuu.com.conf
  - uat-m.chicuu.com.conf
{% endif %}

{% if 'rcmomentweb' in grains['roles'] and grains['env'] == 'prod' %}
rcmoment_vhost:
  - www.rcmoment.com.conf
  - m.rcmoment.com.conf
{% elif 'rcmomentweb' in grains['roles'] and grains['env'] == 'uat' %}
rcmoment_vhost:
  - uat.rcmoment.com.conf
  - uat-m.rcmoment.com.conf
{% endif %}

{% if 'koogeekweb' in grains['roles'] grains['env'] == 'prod' %}
koogeek_vhost:
  - www.koogeek.com.conf
{% elif 'koogeekweb' in grains['roles'] grains['env'] == 'uat' %}
koogeek_vhost:
  - uat.koogeek.com.conf
{% endif %}
