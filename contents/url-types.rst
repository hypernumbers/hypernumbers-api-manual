=========
URL Types
=========

Vixo URL's describe different spreadsheet objects. Not all API calls can be made against all types of object. In the documentation all suitable target objects are listed against each call. The 6 objects are:

* cells
* ranges of cells
* columns
* rows
* pages
* admin pages

The first 5 of these are normal objects - admin pages are treated separately.

Normal Objects
--------------

====================== =======================================================
Type                   Example
====================== =======================================================
a Cell                 ``http://example.com:1234/some/page/a1``

a Range                ``http://example.com:1234/some/page/a1:d6``

(a Range of one Cell)  ``http://example.com:1234/some/page/a1:a1``

Columns                ``http://example.com:1234/some/page/b:d``

(a Column)             ``http://example.com:1234/some/page/b:b``

Rows                   ``http://example.com:1234/some/page/4:6``

(a Row)                ``http://example.com:1234/some/page/4:4``

a Page                 ``http://example.com:1234/some/page/``
====================== =======================================================

All URL's are case-insensitive.

All paths are valid (with the exception of those that begin with an underscore (``_``) which are reserved for admin pages.

There are a small number of exceptions to this case which are discussed in the section on `administrative actions`_.

Path segments can contain the following characters:

* uppercase latin 1 characters
* lowercase latin 1 characters
* numbers
* underscore (``_``)
* hyphen (``-``)
* tilde (``~``)

Using the following path naming conventions will make your life easier:

* don't start a path with an underscore - certain webcontrols which are defined in functions (for example forms, telephony, email handlers) log information to pages whose names begin with an underscore

Normally websites run on port 80 and in these cases the port number (``1234`` in the examples) can be dropped from the URL schema.

Admin Pages
-----------

By convention these pages have a path that begins with an underscore (``_``).

You should not write to any objects on the admin path unless specified by a particular API definition, for example:

* ``http://example.com:1234/_admin/a5``
* ``http://example.com:1234/_my/secret/pages/a5:h10``

Where an API refers to an admin page you should use the page referred to.

.. _administrative actions: ./administrative-actions.html
