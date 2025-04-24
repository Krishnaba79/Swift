//create an enum for different types of vehicales (Car , Bike , truck) and use it in a struct called vehicle with properties for name
//( a string ) and vehicalType(an enum).

// Define an enum for vehicle types
enum VehicleType {
    case car
    case bike
    case truck
}

// Define a struct for vehicle details
struct VehicleDetails {
    var name: String
    var vehicalType: VehicleType
}


