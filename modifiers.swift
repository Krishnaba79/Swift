open class Book {

    //public
    //private
    //internal
    //fileprivate
    //open

    // public: Accessible from any module, but can't be overridden
    public var title: String

    // internal: Default access level - accessible within the same module
    internal var pageCount: Int

    // fileprivate: Accessible only within the current source file
    fileprivate var isbn: String

    // private: Most restrictive - accessible only within this class
    private var secretNotes: String

    public init(title: String, pageCount: Int, isbn: String) {
        self.title = title
        self.pageCount = pageCount
        self.isbn = isbn
        self.secretNotes = "Internal library notes"
    }

    // Open method can be overridden by subclasses even in different modules
    open func displayBookInfo() {
        print("Title: \(title)")
    }

    // Public method accessible everywhere but can't be overridden outside module
    public func getPageCount() -> Int {
        return pageCount
    }

    // Internal method only accessible within the same module
    internal func updatePageCount(_ count: Int) {
        pageCount = count
    }

    // Fileprivate method only accessible within this source file
    fileprivate func getISBN() -> String {
        return isbn
    }

    // Private method only accessible within this class
    private func getSecretNotes() -> String {
        return secretNotes
    }
}

let book1=Book(title:"Twilight",pageCount:224,isbn:"123456789")
book1.displayBookInfo()
print(book1.getPageCount())
book1.updatePageCount(2)
print(book1.getISBN())

// print(book1.getSecretNotes())
