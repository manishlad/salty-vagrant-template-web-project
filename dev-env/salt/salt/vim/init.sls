vim:
  pkg.installed:
    - name: vim

/home/vagrant/.vimrc:
  file.managed:
    - source: salt://vim/template-vimrc
    - require:
      - pkg: vim

