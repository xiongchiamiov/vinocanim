# -*- coding: utf-8 -*-
from unittest import TestCase

from pypeg2 import Symbol
from .parser import *

class ParserTest(TestCase):
    def test_label(self):
        self.assertEqual(
            Label(
                [
                    "['Lorem', 'ipsum']",
                    "['Dolor', 'sit', 'amet']"
                ],
                name=Symbol('start')),
            parse(inFile='test_cases/001.rpy'))

