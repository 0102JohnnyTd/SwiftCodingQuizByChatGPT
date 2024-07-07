//: [Previous](@previous)

import Foundation

// MARK: - Question
//func filterArray(_ array: [Int], using condition: (Int) -> Bool) -> [Int] {
//    // ここにコードを追加してください
//}

// MARK: - Question
func filterArray(_ array: [Int], using condition: (Int) -> Bool) -> [Int] {
    // ここにコードを追加してください
    array.filter { condition($0) }
}




// MARK: - Testcase
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// 偶数のみをフィルタリングする操作
let evens = filterArray(numbers) { (number) -> Bool in
    return number % 2 == 0
}
print(evens)  // 期待される出力: [2, 4, 6, 8, 10]

// 3の倍数のみをフィルタリングする操作
let multiplesOfThree = filterArray(numbers) { (number) -> Bool in
    return number % 3 == 0
}
print(multiplesOfThree)  // 期待される出力: [3, 6, 9]
