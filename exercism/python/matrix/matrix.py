#!/usr/bin/env python3 

class Matrix:
    def __init__(self, matrix_string):
        self.matrix = list(matrix_string.splitlines())

    def row(self, index):
        # Creating list from row index, then converting to integers.
        r = list(self.matrix[index-1].split())
        return list(map(lambda x: int(x), r))
        

    def column(self, index):
        # Creating list of lists, pulling column index from each into
        # a new list, then converting to integers.
        c = list(i.split() for i in self.matrix)
        c = list(i[index-1]for i in c)
        return list(map(lambda x: int(x), c))
