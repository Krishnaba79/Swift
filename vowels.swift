// get input string from user and count number of vowels present in strings for each vowels each eg: Hiral is crazy cool!
// output" {a: 2, i: 2 , o: 2}

func getUserInput(promptText: String) -> String {
    print(promptText, terminator:"")
    return readLine() ?? ""
}

var userInput=getUserInput(promptText: "Enter String: ")
// print(userInput)

var Acount=0
var Ecount=0
var Icount=0
var Ocount=0
var Ucount=0

for char in userInput{

    switch char {
    case "a":
        Acount+=1
    case "e":
        Ecount += 1
    case "i":
        Icount += 1
    case "o":
        Ocount += 1
    case "u":
        Ucount += 1
    default:
        continue
    }
}


if Acount > 0{
    print("a: \(Acount)")

    if Ecount > 0{
        print("e: \(Ecount)")
    }
    if Icount > 0{
        print("i: \(Icount)")
    }
    if Ocount > 0{
        print("o: \(Ocount)")
    }
    if Ucount > 0{
        print("u: \(Ucount)")
    }
}
else{
    print("Vowels not found")
}

// print("a: \(Acount) ,e: \(Ecount) ,i: \(Icount) ,o: \(Ocount) ,u: \(Ucount)")
