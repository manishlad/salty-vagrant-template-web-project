include:
  - apache

extend:
  apache:
    service:
      - watch:
        - file: template-website

disable-default-site:
 cmd.run:
   - name: sudo a2dissite default
   - require:
     - pkg: apache

enable-template-website:
  cmd.run:
    - name: sudo a2ensite template-website
    - watch:
      - file: template-website

template-website:
  file.managed:
    - name: /etc/apache2/sites-available/template-website
    - source: salt://apache/template-website
    - require:
      - pkg: apache

