// Create an app that converts temperatures between Celsius and Fahrenheit.

import Foundation

// Function to convert Celsius to Fahrenheit
func celsiusToFahrenheit(_ celsius: Double) -> Double {
    return (celsius * 9/5) + 32
}

// Function to convert Fahrenheit to Celsius
func fahrenheitToCelsius(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9
}

// --- User Input Section ---
print("Temperature Converter App")

print("Select the conversion type:")
print("1. Celsius to Fahrenheit")
print("2. Fahrenheit to Celsius")
print("Enter 1 or 2:")

if let choice = readLine(), let conversionChoice = Int(choice), (conversionChoice == 1 || conversionChoice == 2) {
    
    // Ask for the temperature value
    print("Enter the temperature value:")
    
    if let inputTemperature = readLine(), let temperature = Double(inputTemperature) {
        
        if conversionChoice == 1 {
            // Celsius to Fahrenheit
            let result = celsiusToFahrenheit(temperature)
            print("\(temperature)° Celsius is \(result)° Fahrenheit.")
        } else {
            // Fahrenheit to Celsius
            let result = fahrenheitToCelsius(temperature)
            print("\(temperature)° Fahrenheit is \(result)° Celsius.")
        }
        
    } else {
        print("Invalid temperature input.")
    }
    
} else {
    print("Invalid choice. Please select either 1 or 2.")
}
