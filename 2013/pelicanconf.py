#!/usr/bin/env python
# -*- coding: utf-8 -*- #
import os

AUTHOR = u'Paylogic'
SITENAME = u'PyGrunn'
SITEURL = 'http://pygrunn.eu'

TIMEZONE = 'Europe/Paris'

DEFAULT_LANG = u'en'

# Blogroll
LINKS =  (('Pelican', 'http://docs.notmyidea.org/alexis/pelican/'),
          ('Python.org', 'http://python.org'),
          ('Jinja2', 'http://jinja.pocoo.org'),
          ('You can modify those links in your config file', '#'),)

STATIC_PAGES = {'discussion.html': 'output/discussion.html'}

# Social widget
SOCIAL = (('You can add links in your config file', '#'),
          ('Another social link', '#'),)

DEFAULT_PAGINATION = False

THEME = 'pygrunn'

STATIC_PATHS = [os.path.join(
    os.path.dirname(os.path.abspath(__file__)), 'static')]
