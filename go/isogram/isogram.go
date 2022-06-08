package isogram

import (
  "strings"
)

func IsIsogram(word string) bool {
  word = strings.ReplaceAll(word, "-", "")
  word = strings.ReplaceAll(word, " ", "")
  for _, i := range word {
    if strings.Count(strings.ToLower(word), strings.ToLower(string(i))) > 1 {
      return false
    }
  }
  return true
}
