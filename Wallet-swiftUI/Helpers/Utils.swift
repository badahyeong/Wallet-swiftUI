//
//  Utils.swift
//  Wallet-swiftUI
//
//  Created by 바다영 on 3/8/24.
//

import Foundation


internal class Utils {
    static func yeartommDateString(date: Date = Date(), format: String = "yyyy-MM-dd HH:mm:ss") -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.dateFormat = "yyyy.MM.dd HH:mm"
        return dateFormatter.string(from: date)
        
    }
}
