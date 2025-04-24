import Function

//a simple Function to get user input
func getUserInput(proptText: String) -> String {
    print(promptText, terminator: "")
    return readLine() ?? ""
}

// how to call this func
var userInput = getUserInput(proptText: "What's your favourite movie?:")

print(usrInput)
