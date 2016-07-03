base:
  '*':
    - base

  'roles:lb': 
    - match: grain
    - lb

  'roles:tomtopweb':
    - match: grain
    - web.tomtop

  'roles:chicuuweb':
    - match: grain
    - web.chicuu

  'roles:rcmomentweb':
    - match: grain
    - web.rcmoment

  'roles:koogeekweb':
    - match: grain
    - web.koogeek

  'roles:cart':
    - match: grain
    - cart

  'roles:manage':
    - match: grain
    - manage

  'roles:api01':
    - match: grain
    - api01

  'roles:api02':
    - match: grain
    - api02
