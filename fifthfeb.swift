struct GameCharacter{
    var name :String
    var health : Int
    var powerLevel:Int
}
public class Game{
    //let shared=Game()

    //simple function (no input , no output)

    func startGame(){
        print("Welcome to the Adventure !")
    }

    

}

func createCharacter (name:String)-> GameCharacter{
    let newCharacter = GameCharacter (name:name,health:100,powerLevel:1)
    return newCharacter
}



var classObj=Game()
classObj.startGame()
Game().startGame()

var cht = createCharacter(name: "krishnaba")
print(cht)

