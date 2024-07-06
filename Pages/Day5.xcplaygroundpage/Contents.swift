//: [Previous](@previous)

import Foundation

// MARK: - Question
//func performOperation(on array: [Int], using operation: (Int) -> Int) -> [Int] {
//    // ここにコードを追加してください
//}




















// MARK: - Answer
func performOperation(on array: [Int], using operation: (Int) -> Int) -> [Int] {
    // ここにコードを追加してください
    array.map { operation($0) }
}


// MARK: - TestCase
// テストケース
let numbers = [1, 2, 3, 4, 5]

// 各要素を2倍にする操作
let doubled = performOperation(on: numbers) { (number) -> Int in
    return number * 2
}
print(doubled)  // 期待される出力: [2, 4, 6, 8, 10]

// 各要素を3乗する操作
let cubed = performOperation(on: numbers) { (number) -> Int in
    return number * number * number
}
print(cubed)  // 期待される出力: [1, 8, 27, 64, 125]
