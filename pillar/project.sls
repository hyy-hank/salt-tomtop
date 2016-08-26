{% if 'api01' in grains['roles'] %}
api01_project:
  - base
  - member
  - product-search
  - advert
  - ipn
  - rabbitmq-producer
{% endif %}

{% if 'api02' in grains['roles'] %}
api02_project:
  - rabbitmq-consumer
  - index-search
  - image
  - logistics
  - loyalty
  - report
  - email
{% endif %}

{% if 'api03' in grains['roles'] %}
api03_project:
  - app
{% endif %}

{% if 'manage' in grains['roles'] %}
manage_project:
  - management
  - search-job
{% endif %}

{% if 'lb' in grains['roles'] %}
static_project:
  - tomtopstatic
  - chicuustatic
  - rcmomentstatic
  - koogeekstatic
  - camferestatic
  - tooartsstatic
  - dodocoolstatic
{% endif %}

{% if 'tomtopweb' in grains['roles'] %}
tomtop_project:
  - tomtopwww
  - tomtopm
{% endif %}

{% if 'chicuuweb' in grains['roles'] %}
chicuu_project:
  - chicuuwww
  - chicuum
{% endif %}

{% if 'rcmomentweb' in grains['roles'] %}
rcmoment_project:
  - rcmomentwww
  - rcmomentm
{% endif %}

{% if 'koogeekweb' in grains['roles'] %}
koogeek_project:
  - koogeekwww
{% endif %}

{% if 'camfereweb' in grains['roles'] %}
camfere_project:
  - camferewww
  - camferem
{% endif %}

{% if 'tooartsweb' in grains['roles'] %}
tooarts_project:
  - tooartswww
  - tooartsm
{% endif %}

{% if 'dodocoolweb' in grains['roles'] %}
dodocool_project:
  - dodocoolwww
{% endif %}