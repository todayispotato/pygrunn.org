:slug: data-acquisition-with-vlermv-database
:speaker: thomas-levine
:year: 2015
:title: Data acquisition with Vlermv database
:fulltitle: Data acquisition with Vlermv database

I like to store my data as ordinary files whenever I can. This
way, I'm not locked into a particular database software, I can
use ordinary file manipulation tools for debugging, and I don't
have to remember how my database works in order to look at my
data. But accessing files is very verbose in Python! My solution
is Vlermv (https://pypi.python.org/pypi/vlermv), an open source
NoSQL database implemented as a Python library that lets me
pretend that my filesystem is a dictionary.

I'll start out by showing you how it works and how convenient
it is. I designed it originally for my own use in data
acquisition systems, and I will show you how I use it in my
practice. Next, I'll show you how it influences my approaches
to testing and debugging. I wrote it, so I'll also talk about
some interesting parts of the implementation. And finally,
I'll comment on the overuse of fancy database software and
half-joke about how Mongo should often be replaced with Vlermv.
