// modify the gane character struct to include an adiitional property , age , of type Imt . Then , create
//some characters with different ages and print a message based on their age ( like "you are a young
// hero!" or "you are a young hero !" or "you are an experienced hero!").

struct GameCharacter{
    var name : String
    var age : Int


    func printMessage() {
        if age < 18{
            print("\(name), you are a young hero!")
        } else if age < 40 {
            print("\(name), you are a brave worrior!")
        } else {
            print("\(name), you are an experienced hero!")
        }
    }
}


let chracater1 = GameCharacter(name:"ALex", age :15)
let chracater2 = GameCharacter(name:"Diana", age :25)
let chracater3 = GameCharacter(name:"Thir", age :45)

chracater1.printMessage()
chracater2.printMessage()
chracater3.printMessage()

