package blackjack

// ParseCard returns the integer value of a card following blackjack ruleset.
func ParseCard(card string) int {
  value := 0
  switch card {
  case "other":
    value = 0
  case "king":
    value = 10
  case "queen":
    value = 10
  case "jack":
    value = 10
  case "ten":
    value = 10
  case "nine":
    value = 9
  case "eight":
    value = 8
  case "seven":
    value = 7
  case "six":
    value = 6
  case "five":
    value = 5
  case "four":
    value = 4
  case "three":
    value = 3
  case "two":
    value = 2
  case "ace":
    value = 11
  }
  return value
}

// IsBlackjack returns true if the player has a blackjack, false otherwise.
func IsBlackjack(card1, card2 string) bool {
  if ParseCard(card1) + ParseCard(card2) == 21 {
    return true
  } else {
    return false
  }
}

// LargeHand implements the decision tree for hand scores larger than 20 points.
func LargeHand(isBlackjack bool, dealerScore int) string {
  if isBlackjack == true && dealerScore < 10 {
    return "W"
  } else if isBlackjack == true && dealerScore > 9 {
    return "S"
  } else {
    return "P"
  }
}

// SmallHand implements the decision tree for hand scores with less than 21 points.
func SmallHand(handScore, dealerScore int) string {
  if handScore > 16 {
    return "S"
  } else if handScore < 11 {
    return "H"
  } else if dealerScore > 6 {
    return "H"
  } else {
    return "S"
  }
}
