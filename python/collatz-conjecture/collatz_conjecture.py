def steps(number): 
    count = 0
    while True:
        if number == 1:
            return count
        if number < 1:
            raise ValueError("Only positive integers are allowed")
        if number % 2 == 0:
            number = number // 2
        else:
            number = number * 3 + 1
        if number == 1:
            count += 1
            return count
        count += 1
    
