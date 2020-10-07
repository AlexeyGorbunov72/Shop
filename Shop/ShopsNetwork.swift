//
//  ShopsNetwork.swift
//  Shop
//
//  Created by Alexey on 04.10.2020.
//

import Foundation
class ShopsNetwork{
    static internal var shops: [Shop] = []
    static func putProductInShop(shopUID: Int, product: Product){
        
    }
    static func getShops() -> [Shop]{
        return shops
    }
    static func deleteShop(shop: Shop){
        for (id, _shop) in shops.enumerated(){
            if _shop.getUID() == shop.getUID(){
                shops.remove(at: id)
                return
            }
        }
    }
    static func deleteShop(shops: [Shop]){
        for shop in shops{
            ShopsNetwork.deleteShop(shop: shop)
        }
    }
    static func deleteShop(shops: Shop...){
        for shop in shops{
            ShopsNetwork.deleteShop(shop: shop)
        }
    }
    static func findMinPriceInShops(){
        
    }
}

class Shop{
    static internal var globalShopUID = -1
    private var selfUID = 0
    var title = ""
    var adres = ""
    var store: [Product] = []
    internal func setUID(){
        Shop.globalShopUID += 1
        selfUID = Shop.globalShopUID
    }
    func getUID() -> Int{
        return selfUID
    }
    init() {
        setUID()
        ShopsNetwork.shops.append(self)
    }
    deinit {
        print("Delete: \(selfUID)")
        ShopsNetwork.deleteShop(shop: self)
        
    }
}
