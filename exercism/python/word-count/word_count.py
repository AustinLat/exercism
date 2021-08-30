#!/usr/bin/env python3

from collections import Counter
import re

def count_words(sentence: str) -> dict:
    '''Take a string as input, seperate words by comma, underline, and spaces.
    Strip off all punctuation charaters from each word, then count the amount
    of times each word is presented.  Return this as a dictionary of word
    as key, and count as value..'''
    sentence = sentence.replace(",", " ").replace("_", " ")
    return dict(Counter([word.lower().strip("!&@.$%^&:'") for word in
        sentence.split()]))
