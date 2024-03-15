//
//  WalletMainViewModel.swift
//  Wallet-swiftUI
//
//  Created by 바다영 on 3/8/24.
//

import Foundation


/*  WalletMain View의 뷰모델
    ObservableObject:
    SwiftUI에서 사용되는 프로토콜, 객체가 변경될 때 해당 변경 사항을 SwiftUI 뷰에 알림.
    이 프로토콜을 채택한 객체를 SwiftUI의 뷰에 주입하면 뷰는 해당 객체의 상태를 구독하고 상태가 변경될 때마다 자동으로 업데이트
 */
class WalletMainViewModel: ObservableObject {
 
    @Published var nowDate = Utils.yeartommDateString()
    @Published var totalBalance = 0.0
    
    let bitcoinData = WalletMainList(pk: 2, name: "Bitcoin", address: "", balance: "0.001", convertBalance: 89344809.78)
    let ethData = WalletMainList(pk: 3, name: "Ethereum", address: "", balance: "0.09", convertBalance: 4879684.29)
    let polygonData = WalletMainList(pk: 7, name: "Polygon", address: "", balance: "29", convertBalance: 1584.20)
    let klaytnData = WalletMainList(pk: 10, name: "Klaytn", address: "", balance: "10", convertBalance: 403.40)
    let solanaData = WalletMainList(pk: 6, name: "Solana", address: "", balance: "1", convertBalance: 219758.50)
    let xrpData = WalletMainList(pk: 5, name: "XRP", address: "", balance: "4", convertBalance: 819.13)
    
    @Published var coinData = [WalletMainList]()
    
    init(nowDate: String = Utils.yeartommDateString()) {
        self.nowDate = nowDate
        fetchData()
    }
    
    func fetchData() {
        coinData = [bitcoinData, ethData, polygonData, klaytnData, solanaData, xrpData]
        for balance in coinData {
            totalBalance += balance.krwBalance
        }
    }
    
}
