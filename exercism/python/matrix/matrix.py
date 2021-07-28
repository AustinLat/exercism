#!/usr/bin/env python3 

class Matrix:
    def __init__(self, matrix_string):
        # Creating list of lists, and converting to integers.
        self.matrix = [list(map(int, i.split())) for i in matrix_string.splitlines()]


    def row(self, index):
        return self.matrix[index-1]
        

    def column(self, index):
        return [i[index-1] for i in self.matrix]

