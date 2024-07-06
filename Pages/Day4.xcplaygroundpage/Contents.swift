//: [Previous](@previous)

import Foundation

// MARK: - Question
//class Book {
//    var title: String
//    var author: String
//    var isCheckedOut: Bool
//
//    init(title: String, author: String, isCheckedOut: Bool = false) {
//        self.title = title
//        self.author = author
//        self.isCheckedOut = isCheckedOut
//    }
//}
//
//class Library {
//    var books: [Book]
//
//    init(books: [Book]) {
//        self.books = books
//    }
//
//    // 本を追加するメソッドを追加してください
//    func addBook(_ book: Book) {
//        // ここにコードを追加してください
//    }
//
//    // 本を検索するメソッドを追加してください
//    func findBook(byTitle title: String) -> Book? {
//        // ここにコードを追加してください
//    }
//
//    // 本を借りるメソッドを追加してください
//    func checkOutBook(withTitle title: String) -> Bool {
//        // ここにコードを追加してください
//    }
//
//    // 本を返すメソッドを追加してください
//    func returnBook(withTitle title: String) -> Bool {
//        // ここにコードを追加してください
//    }
//
//    // 借りられている本のリストを取得するメソッドを追加してください
//    func listCheckedOutBooks() -> [Book] {
//        // ここにコードを追加してください
//    }
//}

// MARK: - Answer
class Book {
    var title: String
    var author: String
    var isCheckedOut: Bool

    init(title: String, author: String, isCheckedOut: Bool = false) {
        self.title = title
        self.author = author
        self.isCheckedOut = isCheckedOut
    }
}

class Library {
    var books: [Book]
    init(books: [Book]) {
        self.books = books
    }
    // 本を追加するメソッドを追加してください
    func addBook(_ book: Book) {
        // ここにコードを追加してください
        books.append(book)
    }
    // 本を検索するメソッドを追加してください
    func findBook(byTitle title: String) -> Book? {
        // ここにコードを追加してください
        books.first { $0.title == title  }
    }
    // 本を借りるメソッドを追加してください
    func checkOutBook(withTitle title: String) -> Bool {
        // ここにコードを追加してください
        if let book = findBook(byTitle: title), !book.isCheckedOut {
            book.isCheckedOut = true
            return true
        }
        return false
    }
    // 本を返すメソッドを追加してください
    func returnBook(withTitle title: String) -> Bool {
        // ここにコードを追加してください
        if let book = findBook(byTitle: title), book.isCheckedOut {
            book.isCheckedOut = false
            return true
        }
        return false
    }
    // 借りられている本のリストを取得するメソッドを追加してください
    func listCheckedOutBooks() -> [Book] {
        // ここにコードを追加してください
        books.filter { $0.isCheckedOut }
    }
}


// MARK: - TestCase
let book1 = Book(title: "1984", author: "George Orwell")
let book2 = Book(title: "To Kill a Mockingbird", author: "Harper Lee")
let book3 = Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald")

let library = Library(books: [book1, book2, book3])
library.addBook(Book(title: "Moby Dick", author: "Herman Melville"))

if let foundBook = library.findBook(byTitle: "1984") {
    print("Found \(foundBook.title) by \(foundBook.author)")  // 期待される出力: Found 1984 by George Orwell
} else {
    print("1984 not found")
}

let checkOutSuccess = library.checkOutBook(withTitle: "1984")
print(checkOutSuccess)  // 期待される出力: true

let returnSuccess = library.returnBook(withTitle: "1984")
print(returnSuccess)  // 期待される出力: true

let checkedOutBooks = library.listCheckedOutBooks()
for book in checkedOutBooks {
    print("\(book.title) by \(book.author)")
}
