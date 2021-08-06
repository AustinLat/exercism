#!/usr/bin/env python3

def is_isogram(string: str) -> bool:
    """Remove all occurences of whitespace and hyphens from the
    input string. Convert to lowercase, then create a set and
    compare set to string lengths."""
    string=string.replace(" ", "")
    string=string.replace("-", "").lower()
    isoset={i for i in string}
    return len(string) == len(isoset)
