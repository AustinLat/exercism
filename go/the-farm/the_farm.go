package thefarm

// See types.go for the types defined for this exercise.

// TODO: Define the SillyNephewError type here.
SillyNephewError = errors.New("Cows can not be negative.")

// DivideFood computes the fodder amount per cow for the given cows.
func DivideFood(weightFodder WeightFodder, cows int) (float64, error) {
	panic("Please implement DivideFood")
}
