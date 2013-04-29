=========================================
Logging Actions Not Available Via The API
=========================================

API Restrictions
----------------

There are two logging functions which cannot be performed via the API. Both these actions write messages to the internal Vixo logs - which are not accessible to the end user. Therefore making them usable by the API would be pointless.

Mark
----

In the Vixo spreadsheet GUI it is possible to post a mark message directly to the log file. This is used to help the product team understand user actions. For instance, is the user searching the menus because the wording is imprecise.

This is an example post of the mark json which can be posted on any page:

.. code-block:: javascript

    {"mark":"viewing page 2 of the tour"}

Javascript Error Logs
---------------------

Javascript errors are captured and posted to the server to be written to the logs.

An example post would be:

.. code-block:: javascript

    {
         "jserr": {
            "msg": "ReferenceError: broken_function is not defined",
            "cookies": "auth=test!hypernumbers.com|556450db4ac3e9a1d876287612578f89|63532459042|fb81786c1ce31961281d4c3bd9d20fc1",
            "pageurl": "http://hypernumbers.dev:9000/some/page/#",
            "lineno": "25135",
            "errorfileurl": "http://hypernumbers.dev:9000/spreadsheet.body.js"
         }
    }
