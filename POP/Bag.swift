//
//  Bag.swift
//  POP
//
//  Created by 유재호 on 2021/12/25.
//

import Foundation

struct Bag {
    
    private var items: [Portable] = []
    
    mutating func put(item: Portable) {
        items.append(item)
    }
    
    func display() {
        print("What's in my bag? : \(items)")
    }
}
