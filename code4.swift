struct  car {
    var brand: String
    var model: String
    var year: Int

    // structs have automatic memberwise intializers
    // init is only needed if you want custome initialization

    mutating func updateYear(to newYear: Int){
        year = newYear // mutating keyword required for modifying struct properties
    }

}

class Vehicle {
    var brand: String
    var model: String
    var year: Int

    init(brand:String, model:String,year:Int){
        self.brand = brand
        self.model = model
        self.year = year
    }

    func updateYear(to newYear:Int){
        year = newYear // no mutating keyword needed
    }
}

func demostrateValueVsReference(){
    var car1 = car(brand: "Toyota", model: "Camry", year:2020)
    var car2 = car1

    car2.updateYear(to:2021)
    print("Car1 year: \(car1.year)")
    print("car2 year: \(car2.year)")

    let Vehicle1 = Vehicle(brand:"Honda",model:"Civic",year:2020)
    let Vehicle2 = Vehicle1

    Vehicle2.updateYear(to:2021)
    print("Vehicle1 year: \(Vehicle1.year)")
    print("Vehicle2 year: \(Vehicle2.year)")

    print(Vehicle1 === Vehicle2)
    
}
demostrateValueVsReference()