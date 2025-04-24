var superheroes = ["Spider-Man","Iron Man","Black Panther"]
var heros:[String]=[]

//getting spider-man (he's at position 0)
print(superheroes[0]) //shows: Spider man

//Adding a new superhero to the end of the list
superheroes.append("Thor")

//now our list has 4 superheroes
print(superheroes.count) //shows : 4

superheroes.remove(at:3)
print(superheroes)

superheroes.insert("krishnaba",at:0)
print(superheroes)


