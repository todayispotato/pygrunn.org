:slug: regular-people-behaving-like-programmers
:speaker: reinout-van-rees
:year: 2015
:title: Regular people behaving like programmers
:fulltitle: Regular people behaving like programmers: testing and version control for water management

At Nelen & Schuurmans, we helped create 3Di (www.3di.nu), a very fast water simulation package. So: floods, rainfall, dam breaches. Interactive, even, via a web interface. For us, that means lots of python and django.

For us, that also means a core calculation engine written in Fortran, which is hard to test. And it also means 20 non-programmers working together on large datasets.

Solution: use programmer tools and techniques! Mercurial with the large-file-extension as a version control system for the datasets. Simple sort-of-unittesting for the core calculation engine. Works like a charm.
