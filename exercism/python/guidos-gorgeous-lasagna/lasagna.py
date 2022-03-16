"""Functions that calculate the remaining bake time, preparation time, and how
much time has elapsed, using the 'EXPECTED_BAKE_TIME', and
'PREPARATION_TIME' constants.
"""

EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2

def bake_time_remaining(time_in):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int baking time already elapsed.
    :return: int remaining bake time derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """
    return EXPECTED_BAKE_TIME - time_in

def preparation_time_in_minutes(layers):
    """Calculate the preparation time.

    :param layers: int amout of layers.
    :return: int total prep time

    Function that finds the total preparation time by multiplying the
    'PREPARATION_TIME' constant by the amount of 'layers'.
    """
    return layers * PREPARATION_TIME

def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate the amout of time elapsed.

    :param number_of_layers: int number of layers.
    :param elapsed_bake_time: int number of minutes in ovenf.
    :return: int number of minutes elapsed with prep and baking.

    Function that calulates the total prep time using the
    'preparation_time_in_minutes' function, then adds the 'elapsed_bake_time' so
    far.
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time
