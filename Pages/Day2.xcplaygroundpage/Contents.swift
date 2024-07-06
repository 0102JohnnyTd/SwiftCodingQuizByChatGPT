//: [Previous](@previous)

import Foundation

// MARK: - Question: このクラスに、年齢を増やすメソッドと、その人が成人かどうかを判定するプロパティを追加してください。
//class Person {
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//
//    // 年齢を1歳増やすメソッドを追加してください
//    func incrementAge() {
//        // ここにコードを追加してください
//        
//    }
//
//    // 成人かどうかを判定するプロパティを追加してください
//    var isAdult: Bool {
//        // ここにコードを追加してください
//        
//    }
//}




// MARK: - Answer
class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    // 年齢を1歳増やすメソッドを追加してください
    func incrementAge() {
        // ここにコードを追加してください
        self.age += 1
    }

    // 成人かどうかを判定するプロパティを追加してください
    var isAdult: Bool {
        // ここにコードを追加してください
        age >= 18
    }
}


// MARK: - TestCase
let person = Person(name: "Alice", age: 17)
person.incrementAge()
print(person.age)  // 期待される出力: 18
print(person.isAdult)  // 期待される出力: true
