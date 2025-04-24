//create a dictionary with keys being  gamecharacter's name and values being their clothingcolor . then , use a loop to print the character
//names and their corsponding colors.

// Creating a dictionary with character names as keys and clothing colors as values
var characterClothingColors: [String: String] = [
    "Alex": "Red",
    "Diana": "Blue",
    "Leo": "Green",
    "Sophia": "Yellow"
]

// Looping through the dictionary and printing character names with their clothing color
for (name, color) in characterClothingColors {
    print("\(name) is wearing \(color).")
}