# -*- coding: utf-8 -*-

# May you recognize your weaknesses and share your strengths.
# May you share freely, never taking more than you give.
# May you find love and love everyone you find.

import re

import pypeg2

class Dialog(str):
    grammar = '"', pypeg2.maybe_some(pypeg2.word), '"', pypeg2.endl

class Label(pypeg2.List):
    pass

instruction = [Dialog, Label]

# We have to delay this definition because it's circular.
Label.grammar = 'label', pypeg2.name(), ':', pypeg2.endl, pypeg2.some(instruction)

def parse(inFile):
    text = open(inFile).read()
    return pypeg2.parse(text, instruction)

