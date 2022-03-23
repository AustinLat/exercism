def convert(number):
    # - has 3 as a factor, add 'Pling' to the result.
    # - has 5 as a factor, add 'Plang' to the result.
    # - has 7 as a factor, add 'Plong' to the result.
    # - _does not_ have any of 3, 5, or 7 as a factor, the result should be the
    # digits of the number
    drops = ""
    if number % 3 == 0:
        drops += "Pling"
    if number % 5 == 0:
        drops += "Plang"
    if number % 7 == 0:
        drops += "Plong"
    if drops == "":
        return str(number)
    else:
        return drops
