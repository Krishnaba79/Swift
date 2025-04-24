// array
// swift doesn't have negative index
// var superheroes = ["Spider-Man","Iron-Man","Black Panther"]
// print(superheroes[-1])

// positive index 
var superheroes = ["Spider-Man","Iron-Man","Black Panther"]

// empty arrya for any datatype
// var heros: [String] = []

// getting spider-man at postition 0
print(superheroes[0])

// adding in array
superheroes.append("Thor")

// now our list has 4 superheroes
print(superheroes.count)

// remove the index
superheroes.remove(at:3)
print(superheroes)

// insert through indexing in array
superheroes.insert("princy",at:0)
print(superheroes)