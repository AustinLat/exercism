package raindrops

import (
    "strconv"
)

func Convert(number int) string {
    rain := ""
    if number % 3 == 0 {
        rain = "Pling"
    }
    if number % 5 == 0 {
        rain += "Plang"
    }
    if number % 7 == 0 {
        rain += "Plong"
    }
    if len(rain) == 0 {
        numstring := strconv.Itoa(number)
    return numstring
    }
    return rain
}
