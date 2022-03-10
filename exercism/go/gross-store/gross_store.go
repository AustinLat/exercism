package gross

// Units stores the Gross Store unit measurements.
func Units() map[string]int {
  measure := make(map[string]int)
  measure["quarter_of_a_dozen"] = 3
  measure["half_of_a_dozen"] = 6
  measure["dozen"] = 12
  measure["small_gross"] = 120
  measure["gross"] = 144
  measure["great_gross"] = 1728
  return measure
}

// NewBill creates a new bill.
func NewBill() map[string]int {
  return make(map[string]int)
}

// AddItem adds an item to customer bill.
func AddItem(bill, units map[string]int, item, unit string) bool {
  _, unitExists := units[unit]
  _, itemExists := bill[item]
  if unitExists == false {
    return false
  }
  if itemExists {
    bill[item] = bill[item] + units[unit]
    return true
  }
  bill[item] = units[unit]
  return true
}

// RemoveItem removes an item from customer bill.
func RemoveItem(bill, units map[string]int, item, unit string) bool {
  _, itemExists := bill[item]
  _, unitExists := units[unit]
  if itemExists == false || unitExists == false {
    return false
  }
  if bill[item] - units[unit] == 0 {
    delete(bill, item)
    return true
  }
  if bill[item] - units[unit] < 0 {
    return false
  }
  bill[item] = bill[item] - units[unit]
  return true
}

// GetItem returns the quantity of an item that the customer has in his/her bill.
func GetItem(bill map[string]int, item string) (int, bool) {
  _, itemExists := bill[item]
  if itemExists == false {
    return 0, false
  }
  return bill[item], true
}
