{% set rvm = pillar.get('rvm', {}) %}
{% set version = rvm.get('version', 'stable') %}

rvm-packages:
  pkg.installed:
    - name: curl

install-rvm:
  cmd.run:
    - name: curl -sSL https://get.rvm.io | bash -s {{ version }}
