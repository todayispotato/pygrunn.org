:slug: code-to-config
:speaker: jasper-spaans
:year: 2016
:title: From code to configuration... and back again
:fulltitle: From code to configuration... and back again

Using Python to put business logic into an application is a natural idea if the people maintaining the business logic are programmers as well. However, we found out that after we had installed our software at several customers, we were spending way too much time on maintaining that.

This led to the first half of the title, from code to config: Create a rule engine that can accept the business logic as configuration, and allows the end user to edit the configuration through the web.

In the lab this setup worked fine, however, after installing it at a beta customer, we found out real life performance had decreased by almost a factor of 10. Even running the code using PyPy did not help us enough.

So, back to the drawing board, and time to start optimizing. We explored a bunch of options, and in the end come up with the second half of the title: a compiler written in Python that can take a configuration and generates optimized Python code.

During this talk I'll show you how we went through this process, and will also dive into the optimizations we've been able to perform using our own compiler.
