// 1. String to Int
func StrToInt(){
    print("String Conversions")

    let stringNumber = "42"

    //This uses optional binding (if let) because conversion might fail 
    if let convertedToInt = Int(stringNumber){
        print ("String \"\(stringNumber)\" to Int:\(convertedToInt)")
    }
    else{
        print("Couldn't convert \"\(stringNumber)\" to Int")
    }
}
StrToInt()

// 2. String to float and double
func StrToFD(){
    let stringDecimal = "3344.141596787654"
    //This uses optional binding (if let) because conversion might fail

    if let convertedToFloat = Float(stringDecimal){
        print("String \"\(stringDecimal)\" to Float: \(convertedToFloat)")
    }
    // This uses optional binding (if let) because conversion might fail 
    if let convertedToDouble = Double(stringDecimal)
    {
        print("String \"\(stringDecimal)\" to Double: \(convertedToDouble)")

    }
}
StrToFD()

// 3. Int to Bool

func IntToBool(){
    let intvalue = 0
    let boolvalue = intvalue != 1 // true if intvalue is 1,false if intvalue is 0
    print(boolvalue)

}
IntToBool()

// 4. Numeric Conversion

func NumericConversions(){
    let intValue = 42
    // This does not uses optional binding (if let) because conversion will no fail

    let intToFloat = Float(intValue)
    let intToDouble = Double(intValue)
    print("Int \(intValue) to Float: \(intToFloat)")
    print("Int \(intValue) to Double: \(intToDouble)")

    // float/Double to int (truncates decimal part)
    let floatValue: Float = 3.99
    let floatToInt = Int(floatValue)
    print("Float \(floatValue) to Int: \(floatToInt) (decimal part is truncated)")

    //Using rounded() to get proper rounding
    let roundedToInt = Int(floatValue.rounded())
    print("Float \(floatValue) rounded to Int: \(roundedToInt)")

}
NumericConversions()