//: [Previous](@previous)

import Foundation


// MARK: - Question
class Product {
    var name: String
    var quantity: Int

    init(name: String, quantity: Int) {
        self.name = name
        self.quantity = quantity
    }
}
//
//class Inventory {
//    var products: [Product]
//
//    init(products: [Product]) {
//        self.products = products
//    }
//
//    // 商品を追加するメソッドを追加してください
//    func addProduct(_ product: Product) {
//        // ここにコードを追加してください
//    }
//
//    // 商品を検索するメソッドを追加してください
//    func findProduct(byName name: String) -> Product? {
//        // ここにコードを追加してください
//    }
//
//    // 商品の在庫を更新するメソッドを追加してください
//    func updateProductQuantity(byName name: String, quantity: Int) -> Bool {
//        // ここにコードを追加してください
//    }
//
//    // 全ての商品のリストを取得するメソッドを追加してください
//    func listAllProducts() -> [Product] {
//        // ここにコードを追加してください
//    }
//}


// MARK: - Answer
class Inventory {
    var products: [Product]

    init(products: [Product]) {
        self.products = products
    }

    // 商品を追加するメソッドを追加してください
    func addProduct(_ product: Product) {
        // ここにコードを追加してください
        products.append(product)
    }

    // 商品を検索するメソッドを追加してください
    func findProduct(byName name: String) -> Product? {
        // ここにコードを追加してください
        products.first(where: { $0.name == name })
        
        // ⬇️でも可能だが、firstは条件に一致する値が見つかった時点で処理が止まる。対してfilterは全ての要素にアクセスする為、パフォーマンスの観点でfirstが優れている。
//        let filteredproducts = products.filter { $0.name == name }
//        return filteredproducts.first
    }

    // 商品の在庫を更新するメソッドを追加してください
    func updateProductQuantity(byName name: String, quantity: Int) -> Bool {
        // ここにコードを追加してください
        if let product = findProduct(byName: name) {
            product.quantity = quantity
            return true
        }
        return false
    }
    
    

    // 全ての商品のリストを取得するメソッドを追加してください
    func listAllProducts() -> [Product] {
        // ここにコードを追加してください
        products
    }
}



// MARK: - TestCase
let product1 = Product(name: "Apple", quantity: 50)
let product2 = Product(name: "Banana", quantity: 30)
let product3 = Product(name: "Orange", quantity: 20)

let inventory = Inventory(products: [product1, product2, product3])
inventory.addProduct(Product(name: "Grapes", quantity: 40))

if let foundProduct = inventory.findProduct(byName: "Banana") {
    print("Found \(foundProduct.name) with quantity \(foundProduct.quantity)")  // 期待される出力: Found Banana with quantity 30
}

let updateSuccess = inventory.updateProductQuantity(byName: "Apple", quantity: 100)
print(updateSuccess)  // 期待される出力: true

let allProducts = inventory.listAllProducts()
for product in allProducts {
    print("\(product.name): \(product.quantity)")
}
// 期待される出力:
// Apple: 100
// Banana: 30
// Orange: 20
// Grapes: 40
