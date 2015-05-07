:slug: ipython-and-mongodb-as-big-data-scratchpads
:speaker: jens-de-smit
:year: 2015
:title: IPython and MongoDB as big data scratchpads
:fulltitle: IPython and MongoDB as big data scratchpads

NoSql databases have gotten considerable exposure the last few years as alternatives to traditional relational databases, one of the more mature examples being MongoDB. MongoDB has been met with enthusiasm, but also with flak, sometimes even by the same people (such as Armin Ronacher: https://speakerdeck.com/mitsuhiko/a-year-of-mongodb). In this talk I will explain how I have leveraged MongoDB's architecture and philosophy as a very efficient scratch pad for doing chain-of-events reconstruction at scale. The talk will explore how to use some command line trickery, an IPython notebook and a bunch of Python modules to extract 10M events out of several hundred GB of log data, and then reducing that to 50K meaningful data points, using MongoDB as the lynchpin.
