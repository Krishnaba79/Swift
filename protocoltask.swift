//create a protocol name:TableDelegate
//properties:row:Int,cols:Int,Sections:Int
//fuctions:CreteTable(),getSections()->Int

protocol TableDelegate{
    var row: Int { get set }
    var cols: Int { get set }
    var Sections: Int { get set }

    func CreteTable()  
    func getSections()->Int

}
struct Student:TableDelegate{
    var row: Int 
    var cols: Int 
    var Sections: Int 

    func CreteTable(){
        print("Student table created with \(row) row and col \(cols)")
    }

    func getSections()->Int{
        return Sections
    }
}
let student = Student(row: 10,cols: 15,Sections:20)
student.CreteTable()


// protocol TableDelegate {
//     var rows: Int { get set }
//     var cols: Int { get set }
//     var section: Int { get set }

//     func createTable()
//     func getSections() -> Int
// }

// // CREATE STRUCT
// struct Table: TableDelegate {
//     var rows: Int
//     var cols: Int
//     var section: Int

//     func createTable(){
//         print("Table created with \(rows) rows and \(cols) columns")
//     }
//     func getSections() -> Int{
//         return section
//     }
// }

// struct Table1: TableDelegate{
//     var rows: Int
//     var cols: Int
//     var section: Int
//     var id: Int

//     func createTable(){
//         print("Table created with \(rows) rows and \(cols) columns and id is \(id)")

//     }
//     func getSections() -> Int{
//         return section
//     }
// }

// let table = Table(rows: 2,cols: 3,section:1)
// table.createTable()
// let table1 = Table1(rows: 2,cols: 3,section:1,id:10)
// table1.createTable()