import UIKit


// MARK: - Question: 以下のコードは、整数の配列から偶数の数をカウントする関数を実装するものです。この関数を完成させてください。
//func countEvenNumbers(in array: [Int]) -> Int {
//    // ここにコードを追加してください
//    var count = 0
//    for number in array {
//        if /* ここに条件を追加してください */ {
//            count += 1
//        }
//    }
//    return count
//}
















// MARK: - Answer
func countEvenNumbers(in array: [Int]) -> Int {
    // ここにコードを追加してください
    var count = 0
    for number in array {
        if number % 2 == 0 {
            count += 1
        }
    }
    return count
}


// MARK: - TestCase
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let result = countEvenNumbers(in: numbers)
print(result)  // 期待される出力: 5
