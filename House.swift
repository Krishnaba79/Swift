struct House{
    let address: String
    let sqaureFeet::Double

    init(address: String,sqaureFeet:Double){
        self.address = address
        self.sqaureFeet = sqaureFeet
    }
}
// Extension 1 :Adding computed properties
// Think of this as installing smart home features - adding new capablilites
//without changing the original structure

extension House{
    var priceEstimate : Double{
        //Asum $200 per square foot
        return sqaureFeet * 200

    }
    


    var sizeCategory : String{
    switch sqaureFeet{
        case 0...1500: return "Cozy"
        case 1501...2500 : return "Medium"
        default:return"spacious"
        }   
    
    }

}

let house = House(address: krishnaba, sqaureFeet:133 )

print("the size of house is: \(house.squareFeet)")
print("the price estimate of house is: \(house.priceEstimate)")