#!/usr/bin/env python3 

class Matrix:
    def __init__(self, matrix_string: str):
        """Create list of lists, and convert string input to integers"""
        self.matrix = [[int(x) for x in i.split()] for i in matrix_string.splitlines()]

    def row(self, index: int) -> list:
        return self.matrix[index-1]

    def column(self, index: int) -> list:
        return [i[index-1] for i in self.matrix]
