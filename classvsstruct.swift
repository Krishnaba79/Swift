struct Car {
    var brand: String
    var model: String
    var year: Int


    // method to update year (mutating because struct are value types)
    mutating func updateYear( to newYear: Int){
        year = newYear
    }
}

class Vehicle {
    var brand: String
    var model: String
    var year: Int

    init(brand:String,model:String,year:Int){
        self.brand = brand
        self.model = model
        self.year = year
    }

    //method to update year (no mutating keyword needed because classes are reference types)
    func updateYear(to newYear: Int){
        year = newYear
    }
}

//demonstrating struct bheaviour (value type)
func demonstrateValueVsReference() {
    var car1 = Car(brand: "Toyota", model: "Camry", year: 2020)
    var car2 = car1  // car2 is a COPY of car1

   car2.updateYear(to: 2021)

    print("Car1 year: \(car1.year)")  // Output: 2020 (car1 remains unchanged)
    print("Car2 year: \(car2.year)")  // Output: 2021 (car2 is updated separately)

    let vehicle1 = Vehicle(brand: "Honda", model: "Civic", year: 2020)
    let vehicle2 = vehicle1  // vehicle2 is a REFERENCE to vehicle1

    vehicle2.updateYear(to: 2021)

    print("Vehicle1 year: \(vehicle1.year)")  // Output: 2021 (both updated)
    print("Vehicle2 year: \(vehicle2.year)")  // Output: 2021 (both updated)

    // Checking reference equality (Are both variables pointing to the same object?)
    print(vehicle1 === vehicle2)  // Output: true (same memory reference)
}

// Calling the function to see results
demonstrateValueVsReference()