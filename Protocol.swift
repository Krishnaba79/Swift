// 2) PRACTICE
// CREATE A PROTOCOL CALLED: Abilities which have three functions
// func 1: swimming, func 2: running, funcc 3: attack->Double
// class Animal,Penguin,Eagle,Tiger


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

    func displayInfo() {
        print("Animal: \(name)")
    }
}

class Penguin: Animal, Abilities {
    func swimming() {
        print("\(name) is swimming fast!")
    }

    func running() {
        print("\(name) can waddle but not run fast!")
    }

    func attack() -> Double {
        print("\(name) pecks the enemy!")
        return 5.0
    }
}

class Eagle: Animal, Abilities {
    func swimming() {
        print("\(name) cannot swim!")
    }

    func running() {
        print("\(name) can hop but prefers flying!")
    }

    func attack() -> Double {
        print("\(name) swoops down and attacks with talons!")
        return 15.0
    }
}

class Tiger: Animal, Abilities {
    func swimming() {
        print("\(name) swims powerfully!")
    }

    func running() {
        print("\(name) runs swiftly!")
    }

    func attack() -> Double {
        print("\(name) pounces and attacks fiercely!")
        return 30.0
    }
}

// Example Usage
let penguin = Penguin(name: "Pingu")
penguin.swimming()
penguin.running()
print("Attack Damage: \(penguin.attack())")

let eagle = Eagle(name: "Eaglor")
eagle.swimming()
eagle.running()
print("Attack Damage: \(eagle.attack())")

let tiger = Tiger(name: "Tigris")
tiger.swimming()
tiger.running()
print("Attack Damage: \(tiger.attack())")