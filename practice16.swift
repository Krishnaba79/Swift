// Create an app that converts temperatures between Celsius and Fahrenheit.

import Foundation

func celsiusToFahrenheit(_ celsius: Double) -> Double {
    return (celsius * 9/5) + 32
}

func fahrenheitToCelsius(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9
}

func startTemperatureConverter() {
    while true {
        print("\n🌡️ Temperature Converter")
        print("1. Convert Celsius to Fahrenheit")
        print("2. Convert Fahrenheit to Celsius")
        print("3. Exit")
        print("Enter your choice (1/2/3): ", terminator: "")

        guard let choice = readLine(), let option = Int(choice) else {
            print("Invalid input. Please enter 1, 2, or 3.")
            continue
        }

        if option == 3 {
            print("Exiting... Stay cool or warm 😎")
            break
        }

        print("Enter the temperature value: ", terminator: "")
        guard let input = readLine(), let temperature = Double(input) else {
            print("Invalid temperature value.")
            continue
        }

        if option == 1 {
            let result = celsiusToFahrenheit(temperature)
            print("\(temperature)°C is equal to \(String(format: "%.2f", result))°F")
        } else if option == 2 {
            let result = fahrenheitToCelsius(temperature)
            print("\(temperature)°F is equal to \(String(format: "%.2f", result))°C")
        } else {
            print("Invalid choice. Please select 1, 2, or 3.")
        }
    }
}

// Run the app
startTemperatureConverter()
