package booking

import "time"

// Schedule returns a time.Time from a string containing a date
func Schedule(date string) time.Time {
  time, _ := time.Parse("1/2/2006 15:04:05", date)
    return time
}

// HasPassed returns whether a date has passed
func HasPassed(date string) bool {
  t, _ := time.Parse("January 2, 2006 15:04:05", date)
  now := time.Now()
  return t.Before(now)
}

// IsAfternoonAppointment returns whether a time is in the afternoon
func IsAfternoonAppointment(date string) bool {
  appointment, _ := time.Parse("Monday, January 2, 2006 15:04:05", date)
  noon, _ := time.Parse("15:04:05", "11:59:59")
  closing, _ := time.Parse("15:04:05", "18:00:00")
  return appointment.Before(closing) && appointment.After(noon)
}

// Description returns a formatted string of the appointment time
func Description(date string) string {
	panic("Please implement the Description function")
}

// AnniversaryDate returns a Time with this year's anniversary
func AnniversaryDate() time.Time {
	panic("Please implement the AnniversaryDate function")
}
