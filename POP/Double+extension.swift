//
//  Double+extension.swift
//  POP
//
//  Created by 유재호 on 2021/12/25.
//

import Foundation

extension Double {
    
    var roundedOff: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.roundingMode = .halfUp
        numberFormatter.maximumSignificantDigits = 3
        
        return numberFormatter.string(for: self) ?? "변환 실패"
    }
}
