//
//  main.swift
//  POP
//
//  Created by 유재호 on 2021/12/25.
//

import Foundation

let appleWatchCharger = Charger(maximumWattPerHour: 5)
let iPhoneCharger = Charger(maximumWattPerHour: 18)
let iPadCharger = Charger(maximumWattPerHour: 30)
let macBookCharger = Charger(maximumWattPerHour: 96)
let macBookHighSpeedCharger = Charger(maximumWattPerHour: 106)

// 맥북 인스턴스를 하나 생성한 후 다양한 충전기로 각각 충전했을 때 완전히 충전될때까지 몇 시간이 걸리는지 확인해보세요!

let myMacBook = MacBook(chargeableWattPerHour: 67, currentBattery: 20)

myMacBook.chargeBattery(charger: appleWatchCharger)
myMacBook.chargeBattery(charger: iPhoneCharger)
myMacBook.chargeBattery(charger: iPadCharger)
myMacBook.chargeBattery(charger: macBookCharger)
myMacBook.chargeBattery(charger: macBookHighSpeedCharger)
