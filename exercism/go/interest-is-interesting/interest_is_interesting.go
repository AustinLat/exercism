package interest

// InterestRate returns the interest rate for the provided balance.
func InterestRate(balance float64) float32 {
  switch {
    case balance >= 5000.0:
      return 2.475
    case balance >= 1000:
      return 1.621
    case balance < 0:
      return 3.213
    default:
      return 0.5
  }
}

// Interest calculates the interest for the provided balance.
func Interest(balance float64) float64 {
  return float64(InterestRate(balance)) / 100 * balance
}

// AnnualBalanceUpdate calculates the annual balance update, taking into account the interest rate.
func AnnualBalanceUpdate(balance float64) float64 {
  return balance + Interest(balance)
}

// YearsBeforeDesiredBalance calculates the minimum number of years required to reach the desired balance:
func YearsBeforeDesiredBalance(balance, targetBalance float64) int {
  years := 0
  for {
    balance = AnnualBalanceUpdate(balance)
    years++
    if balance >= targetBalance {
      break
    }
  }
  return years
}
