//
//  Double+Extension.swift
//  Wallet-swiftUI
//
//  Created by 바다영 on 3/15/24.
//

import Foundation


extension Double {
    
    func totalBalanceShorted() -> String {
        
        let numberFormatter = NumberFormatter()
        numberFormatter.roundingMode = .floor
        numberFormatter.maximumFractionDigits = 8
        guard let text = numberFormatter.string(for: self) else {
            return " "
        }
        
        return text.insertComma
    }
    
    func convertBalanceShorted() -> String {
        let digit: Double = pow(10, 2)
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 2
        
        guard let text = numberFormatter.string(for: NSNumber(value: floor(self * digit) / digit).doubleValue) else {
            return " "
        }
        return text.insertComma
    }
}
