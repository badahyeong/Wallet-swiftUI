//
//  WalletMainList.swift
//  Wallet-swiftUI
//
//  Created by 바다영 on 3/14/24.
//

import Foundation
import SwiftUI

public struct WalletMainList: Hashable {

    
    let pk: Int
    let name: String
    var address: String
    var symbol: String {
        switch CoinType(rawValue: pk) {
        case .bitcoin: return "BTC"
        case .ethereum: return "ETH"
        case .klaytn: return "KLAY"
        case .solana: return "SOL"
        case .xrp: return "XRP"
        case .polygonMatic: return "MATIC"
        default: return ""
        }
    }
    var balance: String
    let convertBalance: Double
//    let explorer: String
//    let explorerURI: String
//    let explorerTxid: String
//    var index: Int
    
    var color: Color {
        switch CoinType(rawValue: pk) {
        case .bitcoin: return Color.macaroniAndCheese2
        case .ethereum: return Color.darkGreyBlue
        case .klaytn: return Color.brownishGrey
        case .solana: return Color.vividPurple
        case .xrp:return Color.lightGreyBlue
        case .polygonMatic: return Color.bluePurple
        default: return Color.dullOrange
        }
    }
    
    var krwBalance: Double {
        guard let balance = Double(balance.replacingOccurrences(of: ",", with: "")) else { return 0.0 }
        
        return balance * Double(convertBalance)
        
    }
    

}
