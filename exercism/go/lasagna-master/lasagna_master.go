package lasagna

// TODO: define the 'PreparationTime()' function
func PreparationTime(layers []string, average int) int {
    total := 0
    if average == 0 {
        average = 2
    }
	for i := 0; i != len(layers); i++ {
        total += i
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
func AddSecretIngredient()
  myList[len(myList)] = friendsList[len(friendsList)]

// TODO: define the 'ScaleRecipe()' function
func ScaleRecipe()
