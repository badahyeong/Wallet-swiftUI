//
//  CoinType.swift
//  Wallet-swiftUI
//
//  Created by 바다영 on 3/14/24.
//

import Foundation

public enum CoinType: Int {
    case adappter = 1
    case bitcoin = 2
    case ethereum = 3
    case binance = 4
    case xrp = 5
    case solana = 6
    case polygonMatic = 7
    case litecoin = 8
    case tron = 9
    case klaytn = 10
}

extension CoinType {
    public func description() -> String {
        switch self {
        case .adappter: return "adappter"
        case .bitcoin: return "bitcoin"
        case .ethereum: return "ethereum"
        case .binance: return "binance"
        case .xrp:  return "xrp"
        case .solana: return "solana"
        case .polygonMatic: return "polygonMatic"
        case .litecoin: return "litecoin"
        case .tron: return "tron"
        case .klaytn: return "klaytn"
        }
    }
}
