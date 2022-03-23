#!/usr/bin/env python3

from collections import Counter
import re

def count_words(sentence: str) -> dict:
    '''Take a string as input.  Use counter to find and count each instance of a
    word using RegEx'''
    return Counter(re.findall(r"[a-zA-Z0-9]+(?:'[a-zA-Z])?", sentence.lower()))
