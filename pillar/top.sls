base:
  'roles:lb':
    - match: grain
    - lb_vhost
    - project

  'roles:*web':
    - match: grain
    - web_vhost
    - project

  'roles:api*':
    - match: grain
    - project 
