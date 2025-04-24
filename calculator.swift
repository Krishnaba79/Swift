func getIntegerInput(prompt: String) -> Int {
    while true {
        print(prompt, terminator: " ")
        if let input = readLine(), let number = Int(input) {
            return number
        }
        print("Invalid input. Please enter an integer.")
    }
}

func getOperation() -> String {
    while true {
        print("Enter operation (+, -, *, /):", terminator: " ")
        if let operation = readLine(), ["+", "-", "*", "/"].contains(operation) {
            return operation
        }
        print("Invalid operation. Please enter one of +, -, *, or /.")
    }
}

let num1 = getIntegerInput(prompt: "Enter first integer:")
let num2 = getIntegerInput(prompt: "Enter second integer:")
let operation = getOperation()

let result: Double? = {
    switch operation {
    case "+": return Double(num1 + num2)
    case "-": return Double(num1 - num2)
    case "*": return Double(num1 * num2)
    case "/": return num2 != 0 ? Double(num1) / Double(num2) : nil
    default: return nil
    }
}()

if let res = result {
    print("Result: \(res)")
} else {
    print("Error: Division by zero is not allowed.")
}
