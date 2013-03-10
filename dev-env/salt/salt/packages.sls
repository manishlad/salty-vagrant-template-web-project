include:
  - apache.template-website
  - web-utils
  - vim

util-pkgs:
  pkg.installed:
    - names:
      - debconf-utils
      - git
      - subversion
      - wget
      - unzip

