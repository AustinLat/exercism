package lasagna

// TODO: define the 'PreparationTime()' function
func PreparationTime(layers []string, average int) int {
  total := 0
  if average == 0 {
    average = 2
  }
	for i:=0; i!=len(layers); i++ {
    total += average
  }
	return total
}

// TODO: define the 'Quantities()' function
func Quantities(layers []string) (int, float64) {
  const noodlesPer = 50
  const saucePer = 0.2
	var noodles int
  var sauce float64
  for i:=0; i!=len(layers); i++ {
    if layers[i] == "sauce" {
      sauce++
    } else if layers[i] == "noodles" {
      noodles++
    }
  }
  Noodles := (noodles * noodlesPer)
	Sauce := (sauce * saucePer)
	return Noodles, Sauce
}

// TODO: define the 'AddSecretIngredient()' function
func AddSecretIngredient(friendsList, myList []string) {
  myList[len(myList)-1] = friendsList[len(friendsList)-1]
}

// TODO: define the 'ScaleRecipe()' function
func ScaleRecipe(quantities []float64, portions int) []float64 {
  var newQuantities []float64
  for i:=0; i!=len(quantities); i++ {
    singlePortion := quantities[i] / 2.0
    newQuantities = append(newQuantities, singlePortion * float64(portions))
  }
  return newQuantities
}

