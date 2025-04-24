//create a protocol called:Abilities which have three functions
//func 1 : swimmng , func 2 : running , func 3 : attack -> Double
//class Animal , Peguin , Eagle , Tiger

// Define the Abilities protocol
protocol Abilities {
    func swimming() -> Double
    func running() -> Double
    func attack() -> Double
}

// Base class Animal
class Animal: Abilities {
    func swimming() -> Double {
        return 0.0 // Default implementation
    }
    
    func running() -> Double {
        return 0.0 // Default implementation
    }
    
    func attack() -> Double {
        return 0.0 // Default implementation
    }
}

// Class Penguin
class Penguin: Animal {
    override func swimming() -> Double {
        return 10.0 // Penguins are good swimmers
    }
    
    override func running() -> Double {
        return 1.0 // Penguins are not good at running
    }
    
    override func attack() -> Double {
        return 2.0 // Penguin's attack power
    }
}

// Class Eagle
class Eagle: Animal {
    override func swimming() -> Double {
        return 0.0 // Eagles do not swim
    }
    
    override func running() -> Double {
        return 5.0 // Eagles can run a bit
    }
    
    override func attack() -> Double {
        return 8.0 // Eagle's attack power
    }
}

// Class Tiger
class Tiger: Animal {
    override func swimming() -> Double {
        return 5.0 // Tigers can swim
    }
    
    override func running() -> Double {
        return 10.0 // Tigers are fast runners
    }
    
    override func attack() -> Double {
        return 10.0 // Tiger's attack power
    }
}

// Example usage
let penguin = Penguin()
print("Penguin swimming speed: \(penguin.swimming())")
print("Penguin running speed: \(penguin.running())")
print("Penguin attack power: \(penguin.attack())")

let eagle = Eagle()
print("Eagle swimming speed: \(eagle.swimming())")
print("Eagle running speed: \(eagle.running())")
print("Eagle attack power: \(eagle.attack())")

let tiger = Tiger()
print("Tiger swimming speed: \(tiger.swimming())")
print("Tiger running speed: \(tiger.running())")
print("Tiger attack power: \(tiger.attack())")