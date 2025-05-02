// This is a structure used to store data about a game character.
struct GameCharacter{
    var name :String
    var health : Int
    var powerLevel:Int
}

// name is a String

// health is an Int (e.g., 100)

// powerLevel is also an Int (e.g., 1)

//This is a class representing the game itself.
public class Game{
    //let shared=Game()

    //simple function (no input , no output)

    func startGame(){
        print("Welcome to the Adventure !")
    }

    

}

// startGame() is a function that just prints a message.

// This function doesn’t take any input and doesn’t return anything.



//This is a function outside the class that creates and returns a GameCharacter.

func createCharacter (name:String)-> GameCharacter{
    let newCharacter = GameCharacter (name:name,health:100,powerLevel:1)
    return newCharacter
}



var classObj=Game()
classObj.startGame()
Game().startGame()

var cht = createCharacter(name: "krishnaba")
print(cht)

