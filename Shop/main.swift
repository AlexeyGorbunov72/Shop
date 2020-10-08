//
//  main.swift
//  Shop
//
//  Created by Alexey on 04.10.2020.
//

import Foundation
import ShopOOP

func setRandomPrices(products: [Product]){
    for priduct in products{
        priduct.setPrice(price: Double.random(in: 2...1000))
    }
}

let products = [
    Product(title: "хуй резиновый", price: 1488),
    Product(title: "вибратор", price: 228),
    Product(title: "навоз", price: 13),
    Product(title: "раб чорный", price: 27),
    Product(title: "пивас", price: 42),
    Product(title: "Алексей Папков Раб для ебли", price: Double.infinity)
]
var shops: [Shop] = []
for i in 0...10{
    shops.append(Shop())
    for _ in 0...Int.random(in: 3...100){
        setRandomPrices(products: products)
        shops[i].putProduct(product: products.randomElement()!)
    }
    print("shop uid: \(shops[i].getUID())")
    shops[i].printProducts()
}
let productToTest = products.randomElement()!
let productToTest1 = products.randomElement()!
print(productToTest.title, productToTest1.title)
print(try ShopsNetwork.findChiperConsignment(consignment: [(product: productToTest, count: 1), (product: productToTest1, count: 1)]))

shops[2].getAllProductsBy(price: 1000).forEach{ print("\($0.product.title): \($0.count)")}
