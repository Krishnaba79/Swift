//a simple function to get user input
func getUserInput(promptText: String) -> String{
    print (promptText, terminator: "")
    return readLine() ?? ""
}

//how to call this func()
var usrInput = getUserInput(promptText: "What's your favourite movie?:")

print(usrInput)     