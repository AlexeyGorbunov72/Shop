//
//  Product.swift
//  Shop
//
//  Created by Alexey on 04.10.2020.
//

class Product{
    var title: String
    var price: Double
    static private var globalProductUID = -1
    private var selfUID: Int = 0
    private func setUID(){
        Product.globalProductUID += 1
        selfUID = Product.globalProductUID
    }
    init(title: String, price: Double) {
        
        self.price = price
        self.title = title
    }
    
}
