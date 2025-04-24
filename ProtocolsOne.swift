// create a rules for protocol
protocol GameCharacterRules{
    var name: String { get }
    var health: Int { get set }

    func attack() -> Int 
    func MakeSound()
}

// create a structor  
struct Warrior: GameCharacterRules {
    var name: String
    var health: Int
    var swordPower: Int

    func attack() -> Int{
        return swordPower * 2
    }
    func MakeSound(){
        print("\(name) says: For glory!")
    }
    
}

struct Wizard: GameCharacterRules{
    var name: String
    var health: Int
    var magicPower: Int

    func attack() -> Int{
        return magicPower * 3
    }

    func MakeSound(){
        print("\(name) says: Abracadabra!")
    }
}

let warrior = Warrior(name: "Bob", health: 100, swordPower: 10)
warrior.MakeSound()

let wizard = Wizard(name: "luna", health: 80, magicPower: 15)
wizard.MakeSound()


// 1) PRACTICE
// PROTOCOL NAME: TableDelegate
// PROPERTIES: rows: Int, cols:Int, Sections:Int
// FUNCTIONS: createTable(), getSections()->Int

// CREATE PROTOCOL
protocol TableDelegate {
    var rows: Int { get set }
    var cols: Int { get set }
    var section: Int { get set }

    func createTable()
    func getSections() -> Int
}

// CREATE STRUCT 1
struct Table: TableDelegate {
    var rows: Int
    var cols: Int
    var section: Int

    func createTable(){
        print("Table created with \(rows) rows and \(cols) columns")
    }
    func getSections() -> Int{
        return section
    }
}

// CREATE STRUCT 2
struct Table1: TableDelegate{
    var rows: Int
    var cols: Int
    var section: Int
    var id: Int

    func createTable(){
        print("Table created with \(rows) rows and \(cols) columns and id is \(id)")

    }
    func getSections() -> Int{
        return section
    }
}

let table = Table(rows: 2,cols: 3,section:1)
table.createTable()
let table1 = Table1(rows: 2,cols: 3,section:1,id:10)
table1.createTable()