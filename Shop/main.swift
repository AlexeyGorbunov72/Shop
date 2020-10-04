//
//  main.swift
//  Shop
//
//  Created by Alexey on 04.10.2020.
//

import Foundation
func govno(){
    let shop: Shop? = Shop()
    var shops: [Shop]? = []
    for _ in 0...100{
        shops!.append(Shop())
    }

    print(ShopsNetwork.getShops().count)
    ShopsNetwork.deleteShop(shop: shop!)
    print(ShopsNetwork.getShops().count)
    ShopsNetwork.deleteShop(shops: shops!)
    print(ShopsNetwork.getShops().count)
}
govno()

