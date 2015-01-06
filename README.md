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

* pip install pelican
* Install the template: `pelican-themes -i pygrunn`
* Start the development server: `./develop_server.sh start`
* When you change the template you need to reinstall it: `pelican-themes -r pygrunn; pelican-themes -i pygrunn`
* 'make devserver' will run the devserver while automatically regenating all files upon changes.


Contact
-------
For personal contact outside the Github repos please email info@pygrunn.org
