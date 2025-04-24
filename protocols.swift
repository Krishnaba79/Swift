// create a rules for protocol
protocol GameCharacterRules{
    var name: String { get }
    var health: Int { get set }

    func attack() -> Int 
    func MakeSound()
}

// create a structor  
struct Warrior: GameCharacterRules {
    var name: String
    var health: Int
    var swordPower: Int

    func attack() -> Int{
        return swordPower * 2
    }
    func MakeSound(){
        print("\(name) says: For glory!")
    }
    
}

struct Wizard: GameCharacterRules{
    var name: String
    var health: Int
    var magicPower: Int

    func attack() -> Int{
        return magicPower * 3
    }

    func MakeSound(){
        print("\(name) says: Abracadabra!")
    }
}

let warrior = Warrior(name: "Bob", health: 100, swordPower: 10)
warrior.MakeSound()

let wizard = Wizard(name: "luna", health: 80, magicPower: 15)
wizard.MakeSound()