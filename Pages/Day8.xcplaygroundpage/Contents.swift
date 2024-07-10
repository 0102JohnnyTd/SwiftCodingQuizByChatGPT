//: [Previous](@previous)

import Foundation

// データベースエラーを定義
enum DatabaseError: Error {
    case userNotFound
    case duplicateUser
    case unknownError
}

// ユーザープロトコルを定義
protocol UserProtocol {
    var id: Int { get }
    var name: String { get }
    var email: String { get }
}

// ユーザークラスを定義
class User: UserProtocol {
    var id: Int
    var name: String
    var email: String
    
    init(id: Int, name: String, email: String) {
        self.id = id
        self.name = name
        self.email = email
    }
}

// MARK: - Question
// データベースを管理するクラスを定義
class Database {
    private var users: [UserProtocol] = []
    
    // ユーザーを追加するメソッド
    func addUser(_ user: UserProtocol) throws {
        // ここにコードを追加してください
    }
    
    // ユーザーを取得するメソッド
    func getUser(byId id: Int) throws -> UserProtocol {
        // ここにコードを追加してください
    }
}


// MARK: - TestCase
let database = Database()
let user1 = User(id: 1, name: "Alice", email: "alice@example.com")
let user2 = User(id: 2, name: "Bob", email: "bob@example.com")

do {
    try database.addUser(user1)
    try database.addUser(user2)
    let fetchedUser = try database.getUser(byId: 1)
    print("Fetched User: \(fetchedUser.name), Email: \(fetchedUser.email)")  // 期待される出力: Fetched User: Alice, Email: alice@example.com
} catch DatabaseError.duplicateUser {
    print("Error: User already exists.")
} catch DatabaseError.userNotFound {
    print("Error: User not found.")
} catch {
    print("Error: Unknown error occurred.")
}





// MARK: - Answer
// データベースを管理するクラスを定義
class Database {
    private var users: [UserProtocol] = []
    
    // ユーザーを追加するメソッド
    func addUser(_ user: UserProtocol) throws {
        // ここにコードを追加してください
        // 追加するユーザーが既存のユーザーと重複した場合はエラーを投げる。
        guard !users.contains(where: { $0.id == user.id })  else {
            throw DatabaseError.duplicateUser
        }
        users.append(user)
    }
    
    // ユーザーを取得するメソッド
    func getUser(byId id: Int) throws -> UserProtocol {
        // ここにコードを追加してください
        guard let user = users.first(where: { $0.id == id  })   else {
            throw DatabaseError.userNotFound
        }
        return user
    }
}

