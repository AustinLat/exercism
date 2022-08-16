package luhn

import (
  "strings"
)

func Valid(id string) bool {
  id = strings.ReplaceAll(id, " ", "")
  startIndex := 0
  total := 0
  if len(id) % 2 != 0 {
    startIndex = 1
  }
  for i := startIndex; i < len(id); i=i+2 {
    if id[i] * 2 > 9 {
      total += int(id[i])*2-9
    } else { total += int(id[i])*2 }
  }
  if startIndex == 0 {
    total = total + int(id[len(id)-1])
  }
  if total % 10 == 0 {
    return true
  }
  return false
}


