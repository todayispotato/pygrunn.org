:slug: produce-makefiles-without-the-annoying-bits
:speaker: kilian-evang
:year: 2014
:title: Produce: Makefiles without the annoying bits
:fulltitle: Produce: Makefiles without the annoying bits

Scientists are increasingly faced with the demand to make their software and data available so others can check their method and results. Makefiles provide a fantastic thin layer above shell scripts for distributing ready-to-run, self-documenting experiments and analyses.

However, Make has its warts, and some advanced requirements lead to extremely tedious-to-write and hard-to-understand code. Alternatives such as SCons or Rake are often too focused on building software and give up too much of Make's simplicity to be suitable as a lingua franca" for scientific exchange.

Enter `Produce <https://github.com/texttheater/produce>`_, a new free and open-source incremental build tool written in Python 3 that retains the basic concepts of Make and uses the friendly and familiar INI file syntax. Arbitrary regular expressions and arbitrary Python expressions make Produce files very powerful while keeping everything as simple and intuitive as possible.
