package raindrops
import (
    "fmt"
    "strconv"
)

func Convert(number int) string {
    rain := ""
    if number % 3 == 0 {
        rain = "Pling"
    }
    if number % 5 == 0 {
        rain = fmt.Sprintf("%sPlang", rain)
    }
    if number % 7 == 0 {
        rain = fmt.Sprintf("%sPlong", rain)
    }
    if len(rain) == 0 {
        numstring := strconv.Itoa(number)
    return numstring
    }
    return rain
//    switch {
//    case number % 3 == 0:
//        rain = "Pling"
//    case number % 5 == 0:
//        rain = fmt.Sprintf("%sPlang", rain)
//    case number % 7 == 0:
//        rain = fmt.Sprintf("%sPlong", rain)
//    case len(rain) == 0:
//        numstring := strconv.Itoa(number)
//        return numstring
//    }
//    return rain
}
