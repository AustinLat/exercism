def equilateral(sides):
	if sides[0] == sides[1] == sides[2]:
		return True
	else:
		return False
	
def isosceles(sides):
	equilateral(sides)
	if sides[0] == sides[1] or sides[1] == sides[2] or sides [0] == sides[2]:
		return True
	else:
		return False


def scalene(sides):
	if sides[0] != sides[1] or sides[1] != sides[2] or sides [0] != sides[2]:
		return True
	else:
		return False
	
