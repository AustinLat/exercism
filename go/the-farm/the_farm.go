package thefarm

import (
    "errors"
    "fmt"
)

// See types.go for the types defined for this exercise.

// TODO: Define the SillyNephewError type here.
var SillyNephewError = errors.New(fmt.Sprintf("Silly nephew, there cannot be blank cows"))

// DivideFood computes the fodder amount per cow for the given cows.
func DivideFood(weightFodder WeightFodder, cows int) (float64, error) {
    fodder, err := weightFodder.FodderAmount()
    fodder = fodder / float64(cows)
    if err == ErrScaleMalfunction {
        fodder = fodder * 2
        return fodder, nil
    }
    if fodder < 0 { return 0,  }
    if cows < 0 { return 0, SillyNephewError }

    if err != nil {
        return 0, err
    }
    return fodder, nil
//    fodder, err := weightFodder / cows
}
