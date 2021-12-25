//
//  Charger.swift
//  POP
//
//  Created by 유재호 on 2021/12/25.
//

import Foundation

/*
 충전기는 앞서 만든 프로토콜을 채택합니다.
 채택을 위해 프로퍼티를 구현합니다.
 채택을 위해 메서드를 정의합니다.
 이 메서드는 충전기와 기기의 허용 와트시를 검사해서, 기기의 허용 와트시가 더 낮다면, 기기에 맞추어 와트시를 낮추어 반환합니다.
 다양한 종류의 maximumWattPerHour 를 가진 충전기 인스턴스를 생성합니다.
 5Wh 애플워치 충전기, 18Wh 아이폰 고속 충전기, 30Wh 아이패드 충전기, 96Wh 맥북 충전기, 106Wh 맥북 충전기
 */

struct Charger: Chargeable {
    
    var maximumWattPerHour: WattPerHour
    
    func convert(chargeableWattPerHour: WattPerHour) -> WattPerHour {
        if self.maximumWattPerHour > chargeableWattPerHour {
            return chargeableWattPerHour
        } else {
            return self.maximumWattPerHour
        }
    }
}

let appleWatchCharger = Charger(maximumWattPerHour: 5)
let iPhoneCharger = Charger(maximumWattPerHour: 18)
let iPadCharger = Charger(maximumWattPerHour: 30)
let macBookCharger = Charger(maximumWattPerHour: 96)
let macBookHighSpeedCharger = Charger(maximumWattPerHour: 106)
