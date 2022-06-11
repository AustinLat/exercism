package grains

import (
  "errors"
)

func Square(number int) (uint64, error) {
  if number > 64 || number < 1 {
    return 0, errors.New("Invalid square")
  }
  grains := 1
  for i:=1; i<number; i++ {
    grains = grains * 2
  }
  return uint64(grains), nil
}

func Total() uint64 {
  total := uint64(0)
  for i:=1; i<=65; i++ {
    sqr, _ := Square(i)
    total += sqr
  }
  return total * 2 + 1
}
