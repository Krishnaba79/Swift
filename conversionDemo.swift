// func StrToInt(){
//     print("String Conversion")

//     let stringNumber="42"
//     if let convertedToInt=Int(stringNumber){
//         print("String \"\(stringNumber)\" to Int: \(convertedToInt)")
//     }
//     else {
//         print("couldn't convert \"\(stringNumber)\"to Int")
//     }
// }

// StrToInt()

// func StrtoFD(){
//     let stringDecimal="3.141592347980898"
//     //this uses optimal binding (if let) because conversion might fail
//     if let convertedToFloat=Float(stringDecimal){
//         print("String \"\(stringDecimal)\" to Float: \(convertedToFloat)")
//     }
    
//     //this uses optional binding (if let) beacause conversion might fail
//     if let convertedToDouble=Double(stringDecimal){
//         print("String \"\(stringDecimal)\" to Double: \(convertedToDouble)")
//     }
// }

// StrtoFD()

// func IntToBool(){
//     var option=0
//     print(option != 0)
// }

// IntToBool()

func NumericConversions(){
    print("Numeric Conversions")

    let intValue=42

    //this does not uses optinal binding (if let) because conversion will not fail

    let intToFloat=Float(intValue)
    let intToDouble=Double(intValue)
    print("Int \(intValue) to Float: \(intToFloat)")
    print("Int \(intValue) to Double: \(intToDouble)")

    // Float/DOuble to Int (truncate decimal part)
    let floatValue: Float = 3.99
    let floatToInt=Int(floatValue)
    print("Float \(floatValue) to Int: \(floatToInt)(decimal part is truncated)")

    // Using rounded() to get proper rounding
    // let roundToInt=Int(floatValue.rounded())
    // print("Float \(floatValue) rounded to Int: \(roundToInt)")

}

NumericConversions()