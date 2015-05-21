:slug: implement-gmail-api-in-our-crm-system
:speaker: bob-voorneveld
:year: 2015
:title: Implement Gmail api in our CRM system
:fulltitle: Implement Gmail api in our CRM system

For over 2 years we tried to implement a good working IMAP implementation for our CRM. After the release/opening of the Gmail API, we switched out IMAP for the API and improved the performance of our system big time. To speed up load times, we also implemented Elastic Search and did a partial implementation of angularjs in our Django project. This way, we reduced our average response time of over 2 seconds to less than 200ms.
