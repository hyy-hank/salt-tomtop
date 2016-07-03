{% if 'tomtopweb' in grains['roles'] %}
tomtop_vhost:
  - www.tomtop.com.conf
  - m.tomtop.com.conf
{% endif %}

{% if 'chicuuweb' in grains['roles'] %}
chicuu_vhost:
  - www.chicuu.com.conf
  - m.chicuu.com.conf
{% endif %}

{% if 'rcmomentweb' in grains['roles'] %}
rcmoment_vhost:
  - www.rcmoment.com.conf
  - m.rcmoment.com.conf
{% endif %}

{% if 'koogeekweb' in grains['roles'] %}
koogeek_vhost:
  - www.koogeek.com.conf
{% endif %}
