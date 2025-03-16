// Que: Define a Laptop class with properties:
// brand(String)
// model (String)
// ramsize (Int) (in GB)

// Create an intializer and a method laptopDetails() that prints the details in the format:
// Laptop Details : <brand> <model> with <ramsize> GB RAM

//instantiate an object of the laptop class and call the method

class Laptop{
    var brand : String
    var model : String
    var ramsize : Int

    init (brand: String, model:String , ramsize:Int){
        self.brand=brand
        self.model=model
        self.ramsize=ramsize
    }


    func laptopDetails(){
        print("Laptop Details: \(brand)  \(model)  with \(ramsize)  GB Ram.")
    }

}

let myLaptop = Laptop (brand: "Lenovo", model: "intel core", ramsize: 256)

myLaptop.laptopDetails()