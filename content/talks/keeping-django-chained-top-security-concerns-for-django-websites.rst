:slug: keeping-django-chained-top-security-concerns-for-django-websites
:speaker: erik-romijn
:year: 2014
:title: Keeping Django chained: top security concerns for Django websites
:fulltitle: Keeping Django chained: top security concerns for Django websites

Django offers excellent support to help you build secure web applications. It has built-in protection against XSS, CSRF, SQL injection, clickjacking and many more attacks. However, the fact that you’re using Django does not mean you're off the hook. You could have flaws in your user authorisation or your SSL setup. Using raw or extra in database queries is helpful when you need that extra power, but also makes it simple to introduce a SQL injection. And so on.

In this session, we'll go through some of the most common and serious security issues that can affect Django websites, and how you can mitigate them. Some of these will apply to other web applications too.
