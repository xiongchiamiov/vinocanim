Turn Ren'Py visual novel scripts into Javascript.

# Motivation

[Visual novels] (VNs) can be an excellent way of presenting information in an
interactive manner.  [Ren'Py] is the de-facto tool for creating VNs, and it is
excellent.  Unfortunately, Ren'Py requires the download of at least one
application, which is fine for serious work, but puts a damper on casual
projects - anything where the user isn't really very invested.

To solve this problem, many people have created Javascript visual novel
engines.  However, most of them haven't had the same thought or work put into
their grammars - performing any sort of non-linear action quickly becomes
painful.

Vinocanim is an attempt to bridge the gap between these two - to take advantage
of both Ren'Py's carefully-designed script language and other authors'
Javascript rendering work.  The end goal is to produce a program that takes in
Ren'Py-compatible scripts and produces scripts suitable for any number of
Javascript visual novel engines.

[Visual novels]: https://en.wikipedia.org/wiki/Visual_novel
[Ren'Py]: http://www.renpy.org/

# Design

Vinocanim is written in Python and uses [pyPEG] as a parsing engine.

Python is an easily-understood language with an extensive ecosystem.  It's also
the language in which Ren'Py is written, so using Python for Vinocanim opens up
opportunities for code cross-pollination.  Most importantly, it's one of the
languages in which I am the most comfortable. :)

There are [many choices] for doing parsing in Python.  pyPEG was chosen because
it was the first project I looked at that seemed reasonably powerful, had
documentation I understood, and had been in active development for at least 6
months.

[pyPEG]: http://fdik.org/pyPEG/
[many choices]: http://nedbatchelder.com/text/python-parsers.html

