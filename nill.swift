var data: Int?
var myData: Int
func convertToInt(input:String) -> Int?{
    //return nill(null) if string can't be converted to integer
    return Int(input)
}

data = convertToInt(input: "22") //in this case value change after first data
print(data!) //"!" ussed for unwrap optional data
data = convertToInt(input: "1")
print(data!)
// data = convertToInt(input: "hsuwqhe")
// print(data!)
myData = data! 
print(myData)