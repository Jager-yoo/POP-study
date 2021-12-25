//
//  MacBook.swift
//  POP
//
//  Created by 유재호 on 2021/12/25.
//

import Foundation

/*
 맥북은 프로퍼티로 다음을 갖습니다.
 기기의 허용 충전 와트시
 현재 저장된 배터리용량 (와트시)
 최대 배터리 용량 (100와트시)
 맥북은 메서드로 다음을 갖습니다.
 chargeBattery(charger: Chargeable) : 충전기를 활용해 배터리를 완전히 충전한 뒤 충전에 걸린 시간을 print 합니다.
 */

struct MacBook {
    
    private let chargeableWattPerHour: WattPerHour
    private let currentBattery: WattPerHour
    private let maximumWattPerHour: WattPerHour = 100
    
    func chargeBattery(charger: Chargeable) {
        let convertedWattPerHour = charger.convert(chargeableWattPerHour: self.chargeableWattPerHour)
        let chargingTime = Double(maximumWattPerHour - currentBattery) / Double(convertedWattPerHour)
        
        print("\(charger) 사용하여 충전에 걸린 시간 : \(chargingTime.roundedOff) 시간")
        print("계산 과정 : (\(maximumWattPerHour) - \(currentBattery)) / \(convertedWattPerHour) = \(chargingTime)")
        print("---")
    }
    
    init(chargeableWattPerHour: WattPerHour, currentBattery: WattPerHour) {
        self.chargeableWattPerHour = chargeableWattPerHour
        self.currentBattery = currentBattery
    }
}
