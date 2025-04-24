// get binary number as input(eg:110011000) from user and return counts of '1' & '0'

func getUserInput(promptText: String) -> String {
    print(promptText, terminator:"")
    return readLine() ?? ""
}

var userInput=getUserInput(promptText: "Enter Binary Number: ")
// print(userInput)

var zerocntr=0
var onecntr=0

for char in userInput{
    if char == "0"{
        zerocntr+=1
    }
    else if char == "1"{
        onecntr+=1
    }
    else{
        print("not counting")
    }
}

print("Zero Counter: \(zerocntr)")
print("One Counter: \(onecntr)")