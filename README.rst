===============================
supervisord
===============================

Salt formula for supervisord

* Free software: BSD license
* SaltStack Formula

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/topics/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``supervisord``
-------------------------------------

Installs the supervisord package with pip.

``supervisord.system``
-------------------------------------
Installs the supervisord package with pip,
and configures a system instance (default: ``/etc/supervisord.conf``).
