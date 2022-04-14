package thefarm

import (
    "errors"
    "fmt"
)

// See types.go for the types defined for this exercise.

// TODO: Define the SillyNephewError type here.
type SillyNephewError struct {
    cow int
}
func (e *SillyNephewError) Error() string {
    return fmt.Sprintf("silly nephew, there cannot be %d cows", e.cow)
}

// DivideFood computes the fodder amount per cow for the given cows.
func DivideFood(weightFodder WeightFodder, cows int) (float64, error) {
    fodder, err := weightFodder.FodderAmount()
    switch {
    case cows < 0:
        return 0, &SillyNephewError{cow: cows}
    case cows == 0:
        return 0, errors.New("division by zero")
    }
    if err != nil {
        if err == ErrScaleMalfunction {
            if fodder < 0 {
                return 0.0, errors.New("negative fodder")
            } else {
                fodder *= 2
            }
        } else {
            return 0.0, err
        }
    }
    if fodder < 0 {
        return 0.0, errors.New("negative fodder")
    }
    return fodder / float64(cows), nil
}
