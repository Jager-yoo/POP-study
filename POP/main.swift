//
//  main.swift
//  POP
//
//  Created by 유재호 on 2021/12/25.
//

import Foundation

// MARK: - 충전 실험
let appleWatchCharger = Charger(maximumWattPerHour: 5)
let iPhoneCharger = Charger(maximumWattPerHour: 18)
let iPadCharger = Charger(maximumWattPerHour: 30)
let macBookCharger = Charger(maximumWattPerHour: 96)
let macBookHighSpeedCharger = Charger(maximumWattPerHour: 106)

// 맥북 인스턴스를 하나 생성한 후 다양한 충전기로 각각 충전했을 때 완전히 충전될때까지 몇 시간이 걸리는지 확인해보세요!

var myMacBook = MacBook(chargeableWattPerHour: 67, currentBattery: 20)

myMacBook.chargeBattery(using: appleWatchCharger)
myMacBook.chargeBattery(using: iPhoneCharger)
myMacBook.chargeBattery(using: iPadCharger)
myMacBook.chargeBattery(using: macBookCharger)
myMacBook.chargeBattery(using: macBookHighSpeedCharger)

// MARK: - 가방에 물건 넣기
var gucciBag = Bag()

gucciBag.put(item: myMacBook)
gucciBag.put(item: macBookHighSpeedCharger)

gucciBag.display()
