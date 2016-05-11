:slug: dag-orientation
:speaker: hugo-buddelmeijer
:year: 2016
:title: The orientation of your DAGs matter!
:fulltitle: The orientation of your DAGs matter!

Usually, and we push our data around: start with A, then make B, finally make C.  This is fine, if you have no idea whether you want to make a C or a D. If you do know what you're doing, then pulling your data is much easier. Start at the end: need D? Then you need B as input, which we already made at the start of the paragraph. Done!, without even thinking about A.

We've implemented such a novel backward-chaining request-driven way of data management in Python for the Astro-WISE information system which we use at the Kapteyn Astronomical Institute to deal with petabytes of astronomical data. We have found it so powerful that I'd love to share and discuss the core ideas with you all.
