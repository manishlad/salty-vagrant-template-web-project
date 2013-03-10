========================
Template website project
========================

This is a basic template web project with a development environment created
in a `salty-vagrant`_ virtual machine and provisioned by a `Saltstack`_ state
tree.

The guest virtual development environment shares the src folder from the host
and serves the website mapped to port 8080 on the host.

The provisioning process downloads and extracts `Bootstrap`_ into the site's
stylesheets folder.


.. _`salty-vagrant`: https://github.com/saltstack/salty-vagrant
.. _`Saltstack`: http://saltstack.org/
.. _`Bootstrap`: http://twitter.github.com/bootstrap/

