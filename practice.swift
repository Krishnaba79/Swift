//1) Practice
// protocol name : TableDelegate
//properties: rows: int,cols:int,Sections:int
//Functions:createTable().getSections()->Int

//create Protocol
protocol TableDelegate{
    var rows:Int{get set}
    var cols:Int{get set}
    var section:Int{get set}

    func createTable()
    func getSections()->Int
}

//create struct

struct Table:TableDelegate{
    var rows:Int
    var cols:Int
    var section: Int


    func createTable(){
        print("Table created  with \(rows) rows and \(cols) columns")
    }
    func getSections()->Int{
        return section
    }
}

struct Table1:TableDelegate{
    var rows :Int
    var cols : Int
    var section : Int
    var id :Int

    func createTable() {
        print("Table created with \(rows) and \(cols) column and id is \(id)")
    }
    func getSections()->Int{
        return section
    }
}

let table=Table(rows:2,cols:3,section:1)
table.createTable()
let table1=Table1(rows:2,cols:3,section:1,id:10)
table1.createTable()