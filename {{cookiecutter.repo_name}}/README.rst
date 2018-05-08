*************************************
{{ cookiecutter.presentation_title }}
*************************************

{{ cookiecutter.presentation_description }}

Requirements
============

You have to install the following requirements to build and serve the
presentation:

- `npm <https://www.npmjs.com/>`_
- `Python 3.4 <https://www.python.org/>`_ or newer

Installing and linking the dependencies
=======================================

You can install and link all required resources by running

::

    $ make link

Running the presentation
========================

You can serve the slides by running

::

    $ make serve

Controlling the presentation
============================

- Use the *SPACE BAR* to move to the next slide.
- Use the *arrow keys* to move around.
- Use the *F* key to enter full screen mode. Press the *ESC* key to leave it again.
- Use the *S* key to open the moderator monitor containing the notes.
- Use the *B* key to make the screen dark. Push the same key to brighten the screen again.
- Use the *ESC* key to enter the bird's-eye view showing all slides. Then use the *arrow keys* to move around.

Showing all tasks in the ``Makefile``
=====================================

You can show all tasks in the ``Makefile`` by running

::

    $ make

License
=======

This work is licensed under a
`Creative Commons Attribution 4.0 International License <http://creativecommons.org/licenses/by/4.0/>`_.
