# This is the makefile for the pygrunn.org portal. It's based on the
# makefile generated by the command `pelican-quickstart' installed by Pelican,
# a static site generator written in Python. Everything we don't need has been
# removed, to keep things as simple as possible (e.g. support for publishing
# with FTP, SSH, rsync, Dropbox and S3).

PY=python
PELICAN=pelican
PELICANOPTS=

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/output
CONFFILE=$(BASEDIR)/pelicanconf.py
PUBLISHCONF=$(BASEDIR)/publishconf.py
PATH := $(BASEDIR)/.env/bin:$(PATH)

DEVSERVER_PORT=8000

# Don't change this or the date formatting in Pelican will depend on the user's local setup...
LC_TIME = en_US.UTF-8

help:
	@echo 'Makefile for the pygrunn.org portal'
	@echo ''
	@echo '  Usage:'
	@echo ''
	@echo '    make html          (re)generate the web site'
	@echo '    make clean         remove the generated files'
	@echo '    make regenerate    regenerate files upon modification'
	@echo '    make publish       generate using production settings'
	@echo '    make serve         serve site at http://localhost:8000'
	@echo '    make devserver     start/restart develop_server.sh'
	@echo '    make stopserver    stop local server'
	@echo '    make github        upload the web site via gh-pages'
	@echo ''

html: clean $(OUTPUTDIR)/index.html

$(OUTPUTDIR)/%.html:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)

clean:
	[ ! -d $(OUTPUTDIR) ] || find $(OUTPUTDIR) -mindepth 1 -delete
	rm -rf .env

regenerate: clean .env
	$(PELICAN) -r $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)

serve: .env
	cd $(OUTPUTDIR) && $(PY) -m pelican.server

devserver: .env
	$(BASEDIR)/develop_server.sh $(DEVSERVER_PORT)

publish: .env
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(PUBLISHCONF) $(PELICANOPTS)

github: publish
	# GitHub pages requires /404.html at the root of the directory structure and
	# for some reason adding a /404.rst document confuses Pelican. So instead we
	# put the 404 page in the /pages/ directory as a hidden page, and copy the
	# generated HTML to /404.html so that the error page actually works :-).
	cp $(OUTPUTDIR)/page-not-found.html $(OUTPUTDIR)/404.html
	# To use a custom DNS name with GitHub Pages there needs to be a /CNAME file
	# in the 'gh-pages' branch containing the DNS name to be used for the site.
	cp CNAME $(OUTPUTDIR)/
ifeq ($(TRAVIS_PULL_REQUEST), false)
	# Import the generated static files to the 'gh-pages' branch.
	ghp-import $(OUTPUTDIR)
	# Push to github
	@git push -fq https://${GH_TOKEN}@github.com/$(TRAVIS_REPO_SLUG).git gh-pages > /dev/null 2>&1
endif

.env:
	git submodule update
	-rm -f .env/bin/python*
	virtualenv .env -p python2.7
	.env/bin/pip install -r requirements.txt

.PHONY: html help clean regenerate serve devserver publish github .env
