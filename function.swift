struct GameCharacter{
    var name:String
    var health:Int
    var powerlevel:Int

}
class Game
{
    //let shared=Game()
    //simple fuhnction (no input,no output)

    func startGame()
    {
        print("Welcome to the Adventure")
    }

    func createCharacter(name:String)->GameCharacter{
    let newCharacter=GameCharacter(name:name,health:100,powerlevel:1)
    return newCharacter
    }
}

func calculate(a:Int,b:Int,key:Bool)->Int
{
    if(key==true)
    {
        return a*b
    }
    else
    {
        return a%b
    }
}

let c=calculate(a:3,b:4,key:true)
print(c)

let gameObj=Game()
gameObj.startGame()

// Game().startGame()
let char=gameObj.createCharacter(name:"Hiral")
print(char)

