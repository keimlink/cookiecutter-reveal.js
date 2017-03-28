**********************
cookiecutter-reveal.js
**********************

.. image:: https://img.shields.io/travis/keimlink/cookiecutter-reveal.js/master.svg
    :target: https://travis-ci.org/keimlink/cookiecutter-reveal.js
    :alt: Build Status

.. image:: https://img.shields.io/bithound/dependencies/github/keimlink/cookiecutter-reveal.js.svg
    :target: https://www.bithound.io/github/keimlink/cookiecutter-reveal.js/master/dependencies/npm
    :alt: bitHound Dependencies

.. image:: https://pyup.io/repos/github/keimlink/cookiecutter-reveal.js/shield.svg
     :target: https://pyup.io/repos/github/keimlink/cookiecutter-reveal.js/
     :alt: Updates

A `cookiecutter <https://github.com/audreyr/cookiecutter>`_ template for
`reveal.js <https://github.com/hakimel/reveal.js>`_ presentations.

Why should I use this?
======================

- You can set up and serve your presentation with only two commands!
- Only `npm <https://www.npmjs.com/>`_ and `Python 3 <https://www.python.org/>`_ are required
- Once you have installed all requirements the presentation works without internet access
- The Python 3 `http.server <https://docs.python.org/3.5/library/http.server.html>`_ module is used to serve the slides which allows you to show the speaker notes in a separate browser window
- Installing reveal.js via npm keeps the size of your presentation small and makes upgrades easy
- A custom CSS file is already included and you can use it for your own styles
- Default license is Creative Commons Attribution 4.0 International License

Usage
=====

1. Install cookiecutter:

::

    $ pip install cookiecutter

2. Set up a new reveal.js project:

::

    $ cookiecutter gh:keimlink/cookiecutter-reveal.js

3. Create your presentation! :rocket:

.. note::

    You can find more information on how to set up and use the presentation you
    just created in the ``README.rst`` of your new reveal.js project.
