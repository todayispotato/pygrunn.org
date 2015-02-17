pygrunn.org
===========

Pygrunn website


Setup
-----

This single page website is deployed to pygrunn.org.


Contributions
-------------

Changes should go into a pull request that will be merged into the 'release' branch after approval by quora.


Setting up a development environment
------------------------------------

* 'make devserver' will run the devserver while automatically regenerating all files upon changes.


Adding speaker/talk content
---------------------------

The new talk tracking system splits up the speaker and talk. You can add talks in content/talks/. See an existing .rst talk file on how to use this.
The talk takes an optional :priority: attribute, which is used to sort the talks.

The system will look for a speaker that is associated with the talk.
Therefore you must give the speaker as slug, the system expects the speaker file (content/speakers/) to have the same name, but with .rst extension.

See some existing speakers and talks for more details.


Setting the next PyGrunn edition live
-------------------------------------

In pelicanconf.py, there is a 'PYGRUNN_YEAR' setting. This reflects the current PyGrunn edition, speakers list and logo's are derived from this setting.
Therefore, when starting the next PyGrunn, it's recommended add at least one talk (else the speaker list will show a nice message telling the user there's no talk, but it's better to just have speakers).

Further, you must put the logo for the next year in 'theme/pygrunn/static/images/logos/'. Give the logo (and large artwork on top of page) a name consistent with the existing files.
The files must be PNGs. For reference, the logo is called "pygrunn\_logo\_<year>.png", and the top artwork "top\_artwork\_<year>.png".

Then, when swithing the 'PYGRUNN_YEAR' setting to the next year, the logo, top artwork, and speaker list are updated automatically.



Contact
-------
For personal contact outside the Github repos please email info@pygrunn.org
