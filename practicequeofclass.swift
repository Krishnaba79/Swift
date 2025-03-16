// Basic Level

// Que : Define a car class with properties : brand(String) , model (String) , and year(int).
// create a intializer and a method cardetails() that prints details.
// instantiate an object and call method.

class Car {
    var brand: String
    var model: String
    var year: Int


    //initializer

    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }

    //method to print car details
    func carDetails(){
        print("Car Details: \(year) \(brand) \(model)")
    }
}

//creatinf an instance of the car class
let myCar = Car(brand: "KIa", model: "carens", year: 1999)

// call method:
myCar.carDetails()