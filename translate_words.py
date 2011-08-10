#!/usr/bin/env python

import sys
import re
from subprocess import check_call

f = open(sys.argv[1], 'r')

words = []

for line in f:
  words.extend([re.sub('[\W_]+', '', x) for x in line.split()])

word_set = set(words)

for word in word_set:
  check_call(['leo', word])
  input(word)
