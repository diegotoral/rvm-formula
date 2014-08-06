{% set rvm = pillar.get('rvm', {}) %}
{% set ruby_version = rvm.get('ruby_version', '2.1.1') %}

rvm-use:
  cmd.run:
    - name: /usr/local/rvm/bin/rvm --default use {{ ruby_version }}
