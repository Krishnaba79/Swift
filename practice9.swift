// Create a simple Calculator where you take two Integers as input from the user, and then ask what 	
// operation to perform on those two Int. Following operations should be supported: (+, -,  /, x). 	
// Return the output Integer after doing the operation.

import Foundation

func simpleCalculator() {
    print("Enter first number:")
    guard let firstInput = readLine(), let num1 = Int(firstInput) else {
        print("Invalid input.")
        return
    }

    print("Enter second number:")
    guard let secondInput = readLine(), let num2 = Int(secondInput) else {
        print("Invalid input.")
        return
    }

    print("Enter operation (+, -, /, x):")
    guard let operation = readLine() else {
        print("Invalid operation.")
        return
    }

    var result: Int?

    switch operation {
    case "+":
        result = num1 + num2
    case "-":
        result = num1 - num2
    case "x", "*":
        result = num1 * num2
    case "/":
        if num2 != 0 {
            result = num1 / num2
        } else {
            print("Cannot divide by zero.")
            return
        }
    default:
        print("Unsupported operation.")
        return
    }

    print("Result: \(result!)")
}
    
simpleCalculator()

