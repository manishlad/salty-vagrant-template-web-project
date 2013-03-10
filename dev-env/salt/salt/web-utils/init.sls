web-utils:
  module:
    - name: archive.unzip
    - run
    - zipfile: /tmp/bootstrap.zip
    - dest: /vagrant/stylesheets/
    - xfiles: ''
    - require:
      - pkg: unzip
      - cmd: clear-old-twitter-bootstrap
      - cmd: twitter-bootstrap

twitter-bootstrap:
  cmd.run:
    - name: wget --output-document=/tmp/bootstrap.zip http://twitter.github.com/bootstrap/assets/bootstrap.zip
    - require:
      - pkg: wget

clear-old-twitter-bootstrap:
  cmd.run:
    - name: rm -rf /tmp/bootstrap.zip /vagrant/stylesheets/bootstrap



#
# Twitter Bootstrap download file does not have a file digest
# otherwise this block would download and manage the file
# ready for extraction instead of having to use wget
#
# twitter-bootstrap:
#   file.managed:
#     - name: /tmp/bootstrap.zip
#     - source: http://twitter.github.com/bootstrap/assets/bootstrap.zip
#     - source_hash: ???

