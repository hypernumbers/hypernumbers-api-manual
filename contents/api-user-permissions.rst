================================
User Permissions In Hypernumbers
================================

In Hypernumbers a user is defined by an email address.

Users are not directly granted any permission to do anything on a Hypernumbers spreadsheet.

Hypernumbers uses role-based access control - a user is placed in one or more groups, and these groups are given various permissions.

This means that a user can be added to a role or deleted from a role in a straightforward manner and site administration is made easy.

In addition to being members of specific groups a user is also the only member of a personal group - which has the same name as their email address.

An example of a users and groups is shown below:

* **user**: ``meldrum@example.com``
* **groups**: ``admin``, ``sales``, ``aberdeen``, ``'meldrum@example.com'``

* **user**: ``iona@example.com``
* **groups**: ``marketing``, ``dundee``, ``'iona@example.com'``

The personal group is only used for 'home pages'.

API
---

An API with a public key of ``12345678abcdefgh`` on site ``http://subdomain.example.com:1234`` is treated as a user with an email address of ``12345678abcdefh.subdomain.example.com.1234@hypernumbersapi.com``.

This email address appears in all logs of activities.

Needless to say the domain ``hypernumbersapi.com`` is not set up to receive email - API keys cannot be invited to view pages like normal users and none of the conventional user-related activities pertain.
