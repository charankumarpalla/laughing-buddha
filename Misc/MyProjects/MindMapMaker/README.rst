Text-to-Freemind
================

A simple text to freemind conversion program


Overview
========

This program converts tab-indented UTF-8 text files into an XML format suitable
for display by Freemind. It was written out of annoyance with the Freemind user
interface, and the lack of 'merging' capabilities when collaborating with other
people.

Copyright  2006–2017  Wouter Bolsterlee <uws@xs4all.nl>

This program is distributed under the GPL v2 (or later) license.


Usage
=====

To convert a single text file into a Freemind file, use::

    $ text-to-freemind input-file.txt.mm > output-file.mm

You can use it as a filter (using shell pipes) as well::

    $ cat some-text-data.mm.txt | text-to-freemind > output-file.mm

A Makefile snippet is also included to convert all ``*.mm.txt`` files into their
``*.mm`` counterparts. First copy or symlink the makefile, than run make::

    $ cp /path/to/text-to-freemind/text-to-freemind.make Makefile
    $ make

Alternatively::

  $ ln -s /path/to/text-to-freemind/text-to-freemind.make Makefile
  $ make

Or execute the makefile directly if you don't want to copy files around::

  $ /path/to/text-to-freemind/text-to-freemind.make


Requirements
============

The conversion program is written in Python (tested with 2.4 and 2.5) and
requires an ElementTree implementation. Install python-elementtree or
python-celementtree (included in Python 2.5) if you run into programs.

The Makefile snippet obviously depends on the make utility. GNU/Make is known
to work.


Issues, problems, and feedback
==============================

This program is a quick hack, so don't expect too much of it. If you feel like
contacting me with problems or suggestions, please mail me. Thanks.

