{% if 'present_user_name' in pillar %}
{% for user in pillar['present_user_name'] %}  
user_{{ user.username }}:
  user.present:
    - name: {{ user.username }}
    - shell: {{ user.shell }}
    - home: {{ user.home }}
    - createhome: True
  ssh_auth.present:
    - user: {{ user.username }}
    - enc: {{ user.enc }}
    - comment: {{ user.comment }}
    - names:
      - {{ user.pub_key }}
{% endfor %}
{% endif %}