// create character structure
struct GameCharacter{
    var name : String
    var health : Int
    var powerLevel : Int
}

public class Game{
    func startGame(){
        print("Welcome to the Adventure!")
    }

    func createCharacter(name:String) -> GameCharacter{
        let newCharacter = GameCharacter(name: name, health: 100, powerLevel: 1)
        return newCharacter
    }

}
// store name in function and print 
var game = Game().createCharacter(name: "Princy")
print(game)


// // create an object of the class
// let game = Game()
// // call function using class object
// game.startGame()

// for crecate class object and print function in one line 
Game().startGame()

func Parameter(num1:Int , num2:Int , key:Bool){
    if key == true {
        print(num1*num2)
    }
    else {
        print(num1 % num2)
    }
}
Parameter(num1:5 , num2:10 , key:true)
Parameter(num1:5 , num2:10 , key:false)