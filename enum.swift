enum CharacterColor{
    case red
    case blue
    case green

}


struct GameCharacter{
    var name : String
    var clothingColor : CharacterColor
}

//Struct: A struct is a type in Swift used to store values and methods. In this case, GameCharacter 
// is a struct that has two properties:
//name: The name of the character (of type String).
//clothingColor: The color of the clothing (of type CharacterColor, which is the enum we defined earlier).

var player = GameCharacter(name:"Alex",clothingColor:.blue)
//This creates a GameCharacter called player. The name is "Alex", and the clothing color is .blue. 
// This is a simple initialization of the GameCharacter struct

func describeOutfit(){
    switch player.clothingColor{
        case .red:
        print("\(player.name)is wearing a cool red outfit!")
        case .blue:
        print("\(player.name)is wearing a awesome blue outfit!")
        case .green:
        print("\(player.name)is wearing a super green outfit!")
    }
}

//This is a function that describes the outfit of the character based on the color of their clothing.
//It uses a switch statement to check the player.clothingColor and prints a description based on 
// the color.
//switch allows you to match the value of player.clothingColor to one of the cases (.red, 
// .blue, .green), and based on that, a message is printed.

describeOutfit()

//this will call describeoutfit() function for the player (who's clothing color is blue , so it 
//will print
    //"Alex is wearing an awsome blue outfit"

var player1 = GameCharacter(name:"krishnaba",clothingColor: .blue)
var player2 = GameCharacter(name:"liju",clothingColor: .red)
var player3 = GameCharacter(name:"princy",clothingColor: .green)

//Here we create new three characters player1 , player2 , player3 with different clothing color.

var allPlayers: [GameCharacter] = [player,player1,player2,player3]
//this creates an array allPlayers containing all the gamecharacters instances.(player,Player1,player2,player3)

var heroes: [GameCharacter] = []

heroes.append(player1)
heroes.append(player2)
heroes.append(player3)

//an empty array heroes is created , and then three players player1 , player2, player3 are aaded to it using the apped method.

//append: this function is used to add a string value to another string.

print(heroes[1].name)
print(heroes[1].clothingColor)
//this prints the name and clothingcolor of the second hero in the heroes array ( at index 1,which is player2 ,whose clothing color is red)
//it will print:
//liju
//red

for player in allPlayers{
    heroes.append(player)
}

heroes.append(contentsOf: allPlayers)

//here , first loop is over , the allplayers array and add each player to the heroes array.
//then the append (contentof:) method adds all the character in the allplayers array to heroes.

var superPower = [
    "spider-man": "Wb shooting",
    "Iron-man": "super smart suit",
    "": ""
]
//this creates  a dictionary called superPower , where the key  is the  hero's name ( a string) and the value is their superPower (another string)

//for example 
//"spder-man " has the superpoer "wb shooting"

//"iron man" has the superpowe "super-smart -suit"

//there is an empty key-value pair "":"" that isn't useful and could be removed