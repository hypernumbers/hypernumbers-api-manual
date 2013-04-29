================================================
Administrative Actions Not Available Via The API
================================================

URL Restrictions
----------------

Separation of administrative and non-administrative functions is based on a convention - starting a URL segment with an underscore ``_``.

The core administrative URL's are:

* ``http://example.com/_authorize/``
* ``http://example.com/_forgotten_password/``
* ``http://example.com/_invite/``
* ``http://example.com/_logout/``
* ``http://example.com/_mynewsite/``
* ``http://example.com/_pages/``
* ``http://example.com/_parse_expression/``
* ``http://example.com/_services/``
* ``http://example.com/_site/``
* ``http://example.com/_sites/``
* ``http://example.com/_statistics/``
* ``http://example.com/_validate/``

These URL's (and their subdirectories) cannot be read or written by the API.

There are a couple of administrative URL's that are readable:

* ``http://example.com/_pages/``
* ``http://example.com/_site/``

The convention that system URL's are demoted by a leading underscore (``_``) is carried through into system functions that generate input on pages they are not on.

By default a form on a page places the information it captures on a subpage called ``_replies`` and the telephony and email functions capture information on a subpage called ``_contacts``.

For example a `form`_ on page:

``http://example.com/some/page/``

will, by convention, place data on:

``http://example.com/some/page/_replies``

(This location can be changed by `configuring`_ the submit button).

In addition the details of all telephone calls and emails are captured in an audit tree of pages under the URL ``/_audit/``.

As a result of this the following URL's are accessible by the API:

* ``http://example.com/_contacts/``
* ``http://example.com/_replies/``

The following page (and all its subpages) may be read by the API **but not written to**:

* ``http://example.com/_audit/``


.. _form: http://documentation.vixo.com/contents/indepth/making-forms.html

.. _submit button: http://documentation.vixo.com/contents/vixo-functions/web-forms/form-button.html

.. _configuring: http://documentation.vixo.com/contents/vixo-functions/web-forms/form-button.html
