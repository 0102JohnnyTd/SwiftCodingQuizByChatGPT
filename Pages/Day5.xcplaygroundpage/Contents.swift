//: [Previous](@previous)

import Foundation

// MARK: - Question
//func performOperation(on array: [Int], using operation: (Int) -> Int) -> [Int] {
//    // ここにコードを追加してください
//}




















// MARK: - Answer
//func performOperation(on array: [Int], using operation: (Int) -> Int) -> [Int] {
//    // ここにコードを追加してください
//    array.map { operation($0) }
//}
//
//
//// MARK: - TestCase
//// テストケース
//let numbers = [1, 2, 3, 4, 5]
//
//// 各要素を2倍にする操作
//let doubled = performOperation(on: numbers) { (number) -> Int in
//    let result = pow(Decimal(number), 2) // 戻り値がDemical(10進数)なのでIntとして扱うには型変換が必要？？
//    print("Int(truncating: result as NSNumber):", Int(truncating: result as NSNumber))
//    return Int(truncating: result as NSNumber)
////    return number * 2
//}
//print(doubled)
//
//// 各要素を3乗する操作
//let cubed = performOperation(on: numbers) { (number) -> Int in
//    return number * number * number
//}
//print(cubed)  // 期待される出力: [1, 8, 27, 64, 125]
