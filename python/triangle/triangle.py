def isatriangle(sides):
	for i, item in enumerate(sides):
		if item == 0:
			return False
		if i == 0 and item > sides[1] + sides[2]:
			return False
		if i == 1 and item > sides[0] + sides[2]:
			return False
		if i == 2 and item > sides[0] + sides[1]:
			return False

def equilateral(sides):
	for i in sides:
		if i == 0:
			return False
	if sides[0] == sides[1] == sides[2]:
		return True
	else:
		return False
	
def isosceles(sides):
	if isatriangle(sides) == False:
		return False	
	if equilateral(sides) == True:
		return True
	if sides[0] == sides[1] or sides[1] == sides[2] or sides [0] == sides[2]:
		return True
	else:
		return False

def scalene(sides):
	if isatriangle(sides) == False:
		return False
	if isosceles(sides) == False:
		return True
	else:
		return False
