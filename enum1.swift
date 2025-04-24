enum CharacterColor {
    case blue
    case red
    case green
}

struct GameCharacter{
    var name:String
    var clothingColor:CharacterColor
}

// player.clothingColor=.red
var player=GameCharacter(name:"Alex",clothingColor:.blue)

func describeOutfit() {
    switch  player.clothingColor {

    case .red:
        print("\(player.name) is wearing a cool red outfit")

    case .blue:
        print("\(player.name) is wearing a cool blue outfit")

    case .green:
        print("\(player.name) is wearing a cool green outfit")
    }
    
}
describeOutfit()

var player1=GameCharacter(name:"Alex",clothingColor:.blue)
var player2=GameCharacter(name:"game1",clothingColor:.red)
var player3=GameCharacter(name:"game2",clothingColor:.green)

var allPlayers: [GameCharacter]=[player,player1,player2,player3]

var heros: [GameCharacter]=[]
heros.append(player1)
heros.append(player2)
heros.append(player3)
print(heros[1].clothingColor)

// for hero in heros {
//     print(hero.name)
//     print(hero.clothingColor)
// }

for player in allPlayers{
    heros.append(player)
}

heros.append(contentsOf:allPlayers)
print(heros)

var superPower = [
    "Spider-man": "Wb shooting",
    "Iron Man": "Super smart suit",
    "": ""
]

//create a function where taking three paramenter two are numbers a int,b int,key bool
//if bool==true return a*b
//if bool==false return else a%b