// create a protocol Abilities which have three functions funcs 1. swimming 2.running 3.attack->double
// class animal , penguin , eagle , tiger

protocol Abilities {
    func swimming()
    func running()
    func attack() -> Double
}

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Penguin: Animal, Abilities {
    func swimming() {
        print("\(name) is swimming skillfully in cold water!")
    }
    
    func running() {
        print("\(name) waddles awkwardly on land!")
    }
    
    func attack() -> Double {
        print("\(name) pecks at the enemy!")
        return 5.0 // Low attack power
    }
}

class Eagle: Animal, Abilities {
    func swimming() {
        print("\(name) cannot swim but can skim over water!")
    }
    
    func running() {
        print("\(name) can hop and walk on land!")
    }
    
    func attack() -> Double {
        print("\(name) swoops down with sharp talons!")
        return 25.0 // Moderate attack power
    }
}

class Tiger: Animal, Abilities {
    func swimming() {
        print("\(name) is an excellent swimmer!")
    }
    
    func running() {
        print("\(name) runs swiftly through the jungle!")
    }
    
    func attack() -> Double {
        print("\(name) pounces and bites fiercely!")
        return 50.0 // High attack power
    }
}

let penguin = Penguin(name: "Pingu")
penguin.swimming()
penguin.running()
print("Attack power: \(penguin.attack())")

print("------------------")

let eagle = Eagle(name: "Eddie")
eagle.swimming()
eagle.running()
print("Attack power: \(eagle.attack())")

print("------------------")

let tiger = Tiger(name: "Sheru")
tiger.swimming()
tiger.running()
print("Attack power: \(tiger.attack())")

