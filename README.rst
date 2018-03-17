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



Running Tests
=============

This test runner was implemented using the formula-test-harness_ project.

Tests will be run on the following base images:

* ``simplyadrian/allsalt:centos_master_2017.7.2``
* ``simplyadrian/allsalt:debian_master_2017.7.2``
* ``simplyadrian/allsalt:opensuse_master_2017.7.2``
* ``simplyadrian/allsalt:ubuntu_master_2016.11.3``
* ``simplyadrian/allsalt:ubuntu_master_2017.7.2``

Local Setup
-----------

.. code-block:: shell

   pip install -U virtualenv
   virtualenv .venv
   source .venv/bin/activate
   make setup

Run tests
---------

* ``make test-centos_master_2017.7.2``
* ``make test-debian_master_2017.7.2``
* ``make test-opensuse_master_2017.7.2``
* ``make test-ubuntu_master_2016.11.3``
* ``make test-ubuntu_master_2017.7.2``

Run Containers
--------------

* ``make local-centos_master_2017.7.2``
* ``make local-debian_master_2017.7.2``
* ``make local-opensuse_master_2017.7.2``
* ``make local-ubuntu_master_2016.11.3``
* ``make local-ubuntu_master_2017.7.2``


.. _formula-test-harness: https://github.com/intuitivetechnologygroup/formula-test-harness
