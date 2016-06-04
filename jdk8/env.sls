{%- from 'jdk8/settings.sls' import java with context %}

include:
  - jdk8

jdk-config:
  file.managed:
    - name: /etc/profile.d/java.sh
    - source: salt://jdk8/java.sh
    - template: jinja
    - mode: 644
    - user: root
    - group: root
    - context:
      java_home: {{ java.java_home }}
