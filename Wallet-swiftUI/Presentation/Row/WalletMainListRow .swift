//
//  WalletMainListCell.swift
//  Wallet-swiftUI
//
//  Created by 바다영 on 3/14/24.
//

import SwiftUI

struct WalletMainListRow: View {
    var coinInfo: WalletMainList
    var body: some View {
    
        HStack {
            Circle()
                .fill(coinInfo.color)
                .frame(width: 26, height: 26, alignment: .leading)
                .padding(.leading, 20)
                .shadow(color: .black.opacity(0.5), radius: 5, x: 2, y: 5)
            Text(coinInfo.name)
                .padding(.leading, 5)
                .font(.notoSansMedium14)
                .foregroundStyle(Color.nightBlue)
                .frame(maxWidth: .infinity, alignment: .leading)
            VStack {
                Text(coinInfo.balance.insertComma + " " + coinInfo.symbol)
                    .font(.notoSansMedium15)
                    .foregroundStyle(Color.nightBlue)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing, 24)
                Text(coinInfo.krwBalance.convertBalanceShorted() + " " + "KRW")
                    .font(.notoSansRegular13)
                    .foregroundStyle(Color.battleshipGrey)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing,24)
            }
            
            
        }
        .frame(height: 96)
        .overlay(
            RoundedRectangle(cornerRadius: 12).stroke(Color(.white).opacity(0.5), lineWidth: 1)
            )
    }
}

struct WalletMainListRow_Previews: PreviewProvider {
    static var previews: some View {
        WalletMainListRow(coinInfo: WalletMainList(pk: 2, name: "Bitcoin", address: "aa", balance: "23000", convertBalance: 10304))
    }
}
