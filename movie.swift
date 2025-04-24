// 2. Create a movie recemendation system :
// tack two inputs
//     1. favourite movie
//     2. favourite food
// if movie name & food name starts from a char in range A to G then Suggest Action movie
// if movie name & food name starts from a char in range H to P then Suggest Thriller movie
// if movie name & food name starts from a char in range Q to Z then Suggest Comedy movie


let movieList = ["Avatar", "Avengers", "Batman", "Gladiator", "Jumanji", "Inception", "Titanic"]
let foodList = ["Apple Pie", "Biryani", "Burger", "Hot Dog", "Pizza", "Steak", "Waffles"]

// Function to get the first character of the string
func getFirstCharacter(from input: String) -> Character? {
    guard let firstCharacter = input.uppercased().first else {
        return nil
    }
    return firstCharacter
}

// Function to recommend a movie
func recommendMovie(favouriteMovie: String, favouriteFood: String) -> String {
    if let movieChar = getFirstCharacter(from: favouriteMovie),
       let foodChar = getFirstCharacter(from: favouriteFood) {
        
        if ("A"..."G").contains(movieChar) && ("A"..."G").contains(foodChar) {
            return "We recommend an Action movie!"
        } 
        else if ("H"..."P").contains(movieChar) && ("H"..."P").contains(foodChar) {
            return "We recommend a Thriller movie!"
        } 
        else if ("Q"..."Z").contains(movieChar) && ("Q"..."Z").contains(foodChar) {
            return "We recommend a Comedy movie!"
        } 
        else {
            return "Please try again with different inputs!"
        }
    } 
    else {
        return "Invalid input. Please enter valid movie and food names."
    }
}

// Main function to take user input and show the recommendation
func main() {
    print("Enter your favourite movie (or press Enter for a random one): ", terminator: "")
    let favouriteMovie = readLine() ?? movieList.randomElement()!

    print("Enter your favourite food (or press Enter for a random one): ", terminator: "")
    let favouriteFood = readLine() ?? foodList.randomElement()!

    print("Movie chosen: \(favouriteMovie)")
    print("Food chosen: \(favouriteFood)")

    let recommendation = recommendMovie(favouriteMovie: favouriteMovie, favouriteFood: favouriteFood)
    print(recommendation)
}

// Run the main function
main()