//Create  a swift program that includes:
// 1. A struct named book with properties:
// title sting , author string , pagecount int  , a custom initializer.
// 2 . a class  named Library with :
// an array of book object , a computed property totalBooks that returns the number of  book in the library.
// 3 . an extension of library that includes a computed property :
// total pages ( return  the total number of page  page in all books.)


import Foundation

// Define a struct "Book" with properties and an initializer
struct Book {
    var title: String
    var author: String
    var pageCount: Int
    
    init(title: String, author: String, pageCount: Int) {
        self.title = title
        self.author = author
        self.pageCount = pageCount
    }
}

// Define a class "Library"
class Library {
    var books: [Book]
    
    // Computed property to get the number of books in the library
    var totalBooks: Int {
        return books.count
    }
    
    init(books: [Book]) {
        self.books = books
    }
}

// Extension for Library to calculate total pages
extension Library {
    var totalPages: Int {
        return books.reduce(0) { $0 + $1.pageCount }
    }
}

// Example usage
let book1 = Book(title: "Swift Programming", author: "John Smith", pageCount: 350)
let book2 = Book(title: "iOS Development", author: "Jane Doe", pageCount: 420)
let book3 = Book(title: "Data Structures", author: "Alan Turing", pageCount: 300)

let myLibrary = Library(books: [book1, book2, book3])

print("Total Books: \(myLibrary.totalBooks)")
print("Total Pages in Library: \(myLibrary.totalPages)")

