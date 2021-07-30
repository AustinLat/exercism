#!/usr/bin/env python3

def distance(strand_a: str, strand_b: str) -> int:
    """Take two strands as strings, and return the hamiming distance."""
    if len(strand_a) != len(strand_b):
        raise ValueError("Input must be valid strands of equal length.")
    ham = 0
    for i in range(len(strand_a)):
        if strand_a[i] != strand_b[i]:
            ham += 1
    return ham
