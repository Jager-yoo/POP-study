//
//  Chargeable.swift
//  POP
//
//  Created by 유재호 on 2021/12/25.
//

import Foundation

typealias WattPerHour = Int
typealias Watt = Int

protocol Chargeable {
    
    var maximumWattPerHour: WattPerHour { get }
    
    func convert(chargeableWattPerHour: WattPerHour) -> WattPerHour
}

extension Chargeable {
    
    func convert(chargeableWattPerHour: WattPerHour) -> WattPerHour {
        return min(self.maximumWattPerHour, chargeableWattPerHour)
    }
}

// 기본 구현(Default Implementation) 할 때는 보통 같은 파일 안에 모아두는지?
