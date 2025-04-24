//Mark: - Optionals in swift

var data:Int?

func convertToInt(input:String)->Int?{
    //Returns nil if string can't be converted to integer
    return Int(input)
}

data=convertToInt(input: "22")
print(data) 
data=convertToInt(input: "")
print(data)
data=convertToInt(input: "qwertyu")
print(data)