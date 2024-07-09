//: [Previous](@previous)

import Foundation


// MARK: - Question
//func sortArray(_ array: [Int], using comparator: (Int, Int) -> Bool) -> [Int] {
//    // ここにコードを追加してください
//}



// MARK: - Answer

func sortArray(_ array: [Int], using comparator: (Int, Int) -> Bool) -> [Int] {
    // ここにコードを追加してください
    array.sorted { comparator($0, $1) }
}

// MARK: - TestCase
let numbers = [5, 3, 8, 1, 2, 7, 4, 6]

// 昇順にソートする操作
let ascending = sortArray(numbers) { (a, b) -> Bool in  // a = 5, b = 3になるかな？になるかな？
    print("a:", a)
    print("b:", b)
    return a < b
}
print(ascending)  // 期待される出力: [1, 2, 3, 4, 5, 6, 7, 8]

// 降順にソートする操作
let descending = sortArray(numbers) { (a, b) -> Bool in
    return a > b
}
print(descending)  // 期待される出力: [8, 7, 6, 5, 4, 3, 2, 1]

// 偶数を優先してソートする操作
let evenFirst = sortArray(numbers) { (a, b) -> Bool in
    if a % 2 == 0 && b % 2 != 0 {
        return true
    } else if a % 2 != 0 && b % 2 == 0 {
        return false
    } else {
        return a < b
    }
}
print(evenFirst)  // 期待される出力: [2, 4, 6, 8, 1, 3, 5, 7]
