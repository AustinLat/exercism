package booking

import (
  "time"
)

// Schedule returns a time.Time from a string containing a date
func Schedule(date string) time.Time {
  formats := []string{
    "1/2/2006 15:04:05",
    "January 2, 2006 15:04:05",
    "Monday, January 2, 2006 15:04:05",
    "2006-01-02",
  }
  for _ , fmat := range formats {
    t, err := time.Parse(fmat, date)
    if err == nil {
      return t
    }
  }
  panic("Unknown date format.")
}

// HasPassed returns whether a date has passed
func HasPassed(date string) bool {
  return Schedule(date).Before(time.Now())
}

// IsAfternoonAppointment returns whether a time is in the afternoon
func IsAfternoonAppointment(date string) bool {
  return Schedule(date).Hour() < 18 && Schedule(date).Hour() >= 12
}

// Description returns a formatted string of the appointment time
func Description(date string) string {
  return Schedule(date).Format("You have an appointment on Monday, January 2, 2006, at 15:04.")
}

// AnniversaryDate returns a Time with this year's anniversary
func AnniversaryDate() time.Time {
  return Schedule("2022-09-15")
}

