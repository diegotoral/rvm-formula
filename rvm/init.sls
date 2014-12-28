{% set rvm = pillar.get('rvm', {}) %}
{% set version = rvm.get('version', 'stable') %}

rvm-packages:
  pkg.installed:
    - name: curl

install-rvm:
  cmd.run:
    - name: gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
    - name: curl -sSL https://get.rvm.io | bash -s {{ version }}
