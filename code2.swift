// Define the protocol for game character rules
protocol GameCharacterRules {
    var name: String { get }
    var health: Int { get set }

    func attack() -> Int
    func makeSound()
}

// Create a struct for Warrior
struct Warrior: GameCharacterRules {
    var name: String
    var health: Int
    var swordPower: Int

    func attack() -> Int {
        return swordPower * 2
    }
    
    func makeSound() {
        print("\(name) says: For glory!")
    }
}

// Create a struct for Wizard
struct Wizard: GameCharacterRules {
    var name: String
    var health: Int
    var magicPower: Int

    func attack() -> Int {
        return magicPower * 3
    }

    func makeSound() {
        print("\(name) says: Abracadabra!")
    }
}

// Create an instance of Warrior
let warriorInstance = Warrior(name: "Bob", health: 100, swordPower: 10)
warriorInstance.makeSound()

// Create an instance of Wizard
let wizardInstance = Wizard(name: "Lina", health: 80, magicPower: 15)
wizardInstance.makeSound()