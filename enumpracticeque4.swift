//QUE 4 : Given an arrray  of gamecharacter objects, write a function to return the name of the character wearing the green color.

struct GameCharacter {
    var name: String
    var age: Int
    var role: String
    var color: String
}

func findCharacterWearingGreen(characters: [GameCharacter]) -> String? {
    for character in characters {
        if character.color.lowercased() == "green" {
            return character.name
        }
    }
    return nil  // Return nil if no character wears green
}
// Creating an array of characters
let characters = [
    GameCharacter(name: "Alex", age: 20, role: "Warrior", color: "Red"),
    GameCharacter(name: "Diana", age: 25, role: "Mage", color: "Blue"),
    GameCharacter(name: "Leo", age: 30, role: "Archer", color: "Green"),
    GameCharacter(name: "Sophia", age: 22, role: "Healer", color: "Yellow")
]

// Finding the character wearing green
if let greenCharacter = findCharacterWearingGreen(characters: characters) {
    print("\(greenCharacter) is wearing green!")
} else {
    print("No character is wearing green.")
}