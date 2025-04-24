//defining the different case to check
enum CharacterColor {

    case red
    case blue
    case green
}

// lets create a game character
struct GameCharacter {

    var name:String
    var clothingColor:CharacterColor
    
}

//creating a character by giving name and color of the outfit
var player = GameCharacter(name:"Dharm",clothingColor:.blue)


player.clothingColor = .red

func describeOutfit(){
    
    switch player.clothingColor {
    case .red:
        print("\(player.name)is wearing a cool red outfit")
    case .blue:
        print("\(player.name)is wearing a cool blue outfit")
    case .green:
    print("\(player.name)is wearing a cool green outfit")
    
        
    }

}

describeOutfit()

var player1 = GameCharacter(name:"Alex",clothingColor: .blue)
var player2 = GameCharacter(name:"game1",clothingColor: .red)
var player3 = GameCharacter(name:"game2",clothingColor: .green)

var heroes:[GameCharacter]=[]
    heroes.append(player1)
    heroes.append(player2)
    heroes.append(player3)
print(heroes[1].clothingColor)

//for hero in heroes {
    //print(hero.name)
    //print(hero.clothingColor)
//}



var allPlayers:[GameCharacter]=[player,player1,player2,player3]

for player in allPlayers{
    heroes.append(player)
}

heroes.append(contentsOf:allPlayers)


