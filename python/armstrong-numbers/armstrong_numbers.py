def is_armstrong_number(number):
    count = 0
    for i in range(len(str(number))):
        count += int(str(number)[i]) ** len(str(number))


    if count == int(number):

        return True
    else:

        return False
