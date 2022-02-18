// Package weather returns a city and it's weather considtion.
package weather

// CurrentCondition sets a variable which stores the current weather conditions.
var CurrentCondition string
// CurrentLocation sets a variable which stores the city name.
var CurrentLocation string

// Forecast function returns a string inclusing the city argument
// and condition argument.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
