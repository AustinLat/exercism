#!/usr/bin/env python3

def distance(strand_a: str, strand_b: str) -> int:
    """Take two strands as strings, and return the hamming distance."""
    if len(strand_a) != len(strand_b):
        raise ValueError("Input must be valid strands of equal length.")
    return len(["Not Equal" for a, b in zip(strand_a, strand_b) if a != b])
