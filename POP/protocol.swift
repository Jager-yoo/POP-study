//
//  protocol.swift
//  POP
//
//  Created by 유재호 on 2021/12/25.
//

import Foundation

typealias WattPerHour = Int
typealias Watt = Int

protocol Chargeable {
    
    var maximumWattPerHour: WattPerHour { get set }
    
    func convert(chargeableWattPerHour: WattPerHour) -> WattPerHour
}
