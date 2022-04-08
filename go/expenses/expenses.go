package expenses

import (
    "errors"
)

// Record represents an expense record.
type Record struct {
	Day      int
	Amount   float64
	Category string
}

// DaysPeriod represents a period of days for expenses.
type DaysPeriod struct {
	From int
	To   int
}

// Filter returns the records for which the predicate function returns true.
func Filter(in []Record, predicate func(Record) bool) []Record {
    var newRecord = []Record{}
    for i, v := range in {
        if predicate(v) {
            newRecord = append(newRecord, in[i])
        }
    }
    return newRecord
}

// ByDaysPeriod returns predicate function that returns true when
// the day of the record is inside the period of day and false otherwise
func ByDaysPeriod(p DaysPeriod) func(Record) bool {
    return func(record Record) bool {
        return p.From <= record.Day && p.To >= record.Day
    }
}

// ByCategory returns predicate function that returns true when
// the category of the record is the same as the provided category
// and false otherwise
func ByCategory(c string) func(Record) bool {
    return func(record Record) bool {
        return c == record.Category
    }
}

// TotalByPeriod returns total amount of expenses for records
// inside the period p
func TotalByPeriod(in []Record, p DaysPeriod) float64 {
    var total = 0.0
    for _, v := range in {
        period := ByDaysPeriod(p)
        if period(v) {
            total += v.Amount
        }
    }
    if total == 0.0 { return 0 }
    return total
}

// CategoryExpenses returns total amount of expenses for records
// in category c that are also inside the period p.
// An error must be returned only if there are no records in the list that belong
// to the given category, regardless of period of time.
func CategoryExpenses(in []Record, p DaysPeriod, c string) (float64, error) {
    er := true
    total := 0.0
    for _, v := range in {
        if ByCategory(c)(v) {
            er = false
            if ByDaysPeriod(p)(v) {
                total += v.Amount
            }
        }
    }
    if er {
        return total, errors.New("No record for that category.")
    }
    return total, nil
}
