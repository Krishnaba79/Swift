// Que: Define a class called Person with properties name  and age. create initializer and a method to dsiplay the person's details.

class Person {
    var name: String
    var age: Int

    init(name: String, age: Int){
        self.name = name
        self.age = age

    }
    

    func personDetails(){
        print("my name is:  \(name)  and my age is :  \(age)")
    }
}

let person1 = Person(name: "Krishnaba" ,age: 21)

person1.personDetails()