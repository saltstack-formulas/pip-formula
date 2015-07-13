pip
===

Install pip

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``pip``
-------

Installs pip.

``pip.configure``
-----------------

Installs a system-wide configuration file for pip, using settings from
pillar. This is useful if you run your own PyPI server, for example.


``pip.extensions``
-------

Installs pip with gcc and the python dev packages.
This is useful if you want C python extensions compiled with pip.
