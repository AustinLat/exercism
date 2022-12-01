package luhn

import (
  "strings"
)

func Valid(id string) bool {
  id = strings.ReplaceAll(id, " ", "")
  if len(id) <= 1 {
    return false
  }

  startIndex := 0
  total := 0
  if len(id) % 2 == 0 {
    startIndex = 1
  }

  total += Doubles(startIndex, id)  
 
  if startIndex == 0 {
    startIndex = 1
  } else { startIndex = 0 }
 
  for i := startIndex; i < len(id); i=i+2 {
    total += int(id[i])
  }

  if total % 10 == 0 {
    return true
  } else { return false }
}

func Doubles(start int, input string) int {
  tot := 0
  for i := start; i < len(input); i=i+2 {
    if int(input[i])*2>9 {
      tot += int(input[i])*2-9
    } else { tot += int(input[i])*2 }
  }
  return tot
}

