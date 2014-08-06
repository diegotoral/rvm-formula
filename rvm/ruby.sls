{% set rvm = pillar.get('rvm', {}) %}
{% set ruby_version = rvm.get('ruby_version', '2.1.1') %}

install-requirements:
  cmd.run:
    - name: /usr/local/rvm/bin/rvm requirements
    - watch:
      - cmd: install-rvm

install-ruby:
  cmd.wait:
    - cmd: /usr/local/rvm/bin/rvm install {{ ruby_version }}
    - watch:
      - cmd: install-requirements
