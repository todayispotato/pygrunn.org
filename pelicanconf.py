#!/usr/bin/env python
# -*- coding: utf-8 -*- #
import os

PYGRUNN_YEAR = 2017

AUTHOR = u'PyGrunn Community'
SITENAME = u'PyGrunn'
SITEURL = 'http://pygrunn.org'

TIMEZONE = 'Europe/Amsterdam'

DEFAULT_LANG = u'en'

PATH = 'content'

# Blogroll. These are not used.
LINKS = (('Pelican', 'http://docs.notmyidea.org/alexis/pelican/'),
         ('Python.org', 'http://python.org'),
         ('Jinja2', 'http://jinja.pocoo.org'),
         ('You can modify those links in your config file', '#'),)

# STATIC_PAGES = {'discussion.html': 'output/discussion.html'}

# Social widget
SOCIAL = (('You can add links in your config file', '#'),
          ('Another social link', '#'),)

DEFAULT_PAGINATION = False

THEME = os.path.join(os.path.dirname(__file__), 'themes', 'pygrunn')

# Uncomment following line for absolute URLs in production:
RELATIVE_URLS = True

# LOAD_CONTENT_CACHE = False

PLUGINS = ('plugins.pygrunn_talks', 'plugins.pygrunn_speakers')

# Exclude speaker and talk pages from other content.
ARTICLE_EXCLUDES = ['pages', 'speakers', 'talks', 'speaker-images']
PAGE_EXCLUDES = ['talks', 'speakers', 'speaker-images']

# The URL we will use to link to a page.
PAGE_URL = '{slug}'
# The location we will save the page.
PAGE_SAVE_AS = '{slug}.html'

# Specifies where you want the slug to be automatically generated from.
SLUGIFY_SOURCE = 'basename'
