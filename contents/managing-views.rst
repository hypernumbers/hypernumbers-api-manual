==============
Managing Views
==============

A Hypernumbers page can have a number of views, the most important ones are:

* spreadsheet
* webpage
* wikipage
* table

Permissions are applied via the views. If a user has permission to **see** the spreadsheet view of a particular page then they have permission to **do** all spreadsheet things to that page - whereas if they only have permission to **see** the webpage they can't change anything.

You can read more about `views`_ in the Hypernumbers Manual.

Using the API you can:

* set the default view of a table
* manage the permissions assigned to a particular view

Setting The Default View
------------------------

This can be done using the following API call:

.. tabularcolumns:: |l|L|

=========== ================================================================
Component   Details
=========== ================================================================
Method      ``POST``

Headers     ``{"Accept", "application/json"}``

            ``{"Content-MD5", MD5 hash sum of body}``

            ``{"Authorization", generated by api client library}``

Body        ``{"default_view": {"view": "spreadsheet"}}``

            ``{"default_view": {"view": "wikipage"}}``

            ``{"default_view": {"view": "webpage"}}``

            ``{"default_view": {"view": "table"}}``

Permissions ``normal`` or ``admin``

Page        ``http://example.com/some/page/``
=========== ================================================================

Managing A View's Permissions
-----------------------------

This can be done using the following API call:

.. tabularcolumns:: |l|L|

=========== =================================================================================
Component   Details
=========== =================================================================================
Method      ``POST``

Headers     ``{"Accept", "application/json"}``

            ``{"Content-MD5", MD5 hash sum of body}``

            ``{"Authorization", generated by api client library}``

Body        ``{"set_view": {"view": "spreadsheet", "everyone": false, "groups": ["admin"]}}``

            ``{"set_view": {"view": "wikipage", "everyone": false, "groups": ["admin"]}}``

            ``{"set_view": {"view": "webpage", "everyone": false, "groups": ["admin"]}}``

            ``{"set_view": {"view": "table", "everyone": false, "groups": ["admin"]}}``

Permissions ``normal`` or ``admin``

Page        ``http://example.com/some/page/``
=========== =================================================================================

To make a particular view available to anonymous/not logged in users (ie to make it a public web page) the value of ``everyone`` should be set to ``true``.

.. Note::

    Setting ``everyone`` to ``true`` for the **spreadsheet** view is a **VERY BAD IDEA**.

.. _views: http://documentation.hypernumbers.org/contents/hypernumbers-overview/web-and-wikipages.html?freom=hypernumbers-api-manual
