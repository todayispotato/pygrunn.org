pygrunn.org
===========

Pygrunn website

.. image:: https://travis-ci.org/paylogic/pygrunn.org.svg?branch=master
    :target: https://travis-ci.org/paylogic/pygrunn.org


Setup
-----

This single page website is deployed to pygrunn.org.

Contributions
-------------

Changes should go into a pull request that will be merged into the
‘release’ branch after approval by quora.

Setting up a development environment
------------------------------------

To run the pygrunn website locally (e.g. to easily preview changes) the
following steps should help you get started::

  # Clone the git repository.
  git clone git@github.com:paylogic/pygrunn.org.git

  # Run Pelican and view the result in a web browser.
  cd pygrunn.org
  make devserver [DEVSERVER_PORT=<port>]
  gnome-open http://127.0.0.1:8000  # DEVSERVER_PORT is 8000 by default

Adding speaker/talk content
---------------------------

The new talk tracking system splits up the speaker and talk. You can add
talks in content/talks/. See an existing .rst talk file on how to use
this. The talk takes an optional :priority: attribute, which is used to
sort the talks.

The system will look for a speaker that is associated with the talk.
Therefore you must give the speaker as slug, the system expects the
speaker file (content/speakers/) to have the same name, but with .rst
extension.

See some existing speakers and talks for more details.

Setting the next PyGrunn edition live
-------------------------------------

In pelicanconf.py, there is a ‘PYGRUNN\_YEAR’ setting. This reflects the
current PyGrunn edition, speakers list and logo’s are derived from this
setting. Therefore, when starting the next PyGrunn, it’s recommended add
at least one talk (else the speaker list will show a nice message
telling the user there’s no talk, but it’s better to just have
speakers).

Further, you must put the logo for the next year in
‘theme/pygrunn/static/images/logos/’. Give the logo (and large artwork
on top of page) a name consistent with the existing files. The files
must be PNGs. For reference, the logo is called “pygrunn\_logo.png”,
and the top artwork “top\_artwork.png”.

Then, when swithing the ‘PYGRUNN\_YEAR’ setting to the next year, the
logo, top artwork, and speaker list are updated automatically.

Publishing changes
------------------

This repo is set up the way ``travis`` will build the static content
automatically on every push to ``master`` branch, and then will push the
build result to ``gh-pages`` branch, which is then served by
``GitHub Pages``.

Contact
-------

For personal contact outside the Github repos please email
info@pygrunn.org
