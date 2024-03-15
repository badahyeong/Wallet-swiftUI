//
//  WalletMainView.swift
//  Wallet-swiftUI
//
//  Created by 바다영 on 2024/02/08.
//

import SwiftUI

struct WalletMainView: View {
    
    /* 상태를 관리하는 @StateObject 프로퍼티
        viewModel 객체 생성*/
    @StateObject var viewModel = WalletMainViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer().frame(height: 1)
            VStack {
                HStack(spacing: 3){ //텍스트 사이 여백조절은 spacing 사용
                    Text("사용자's")
                        .foregroundStyle(Color.nightBlue)
                        .padding(.leading, 22)
                    Text("Wallet1")
                        .foregroundStyle(Color.clearBlue)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .font(.notoSansBold22)
            }
            .frame(height: 58)
            
            List {
                ListHeaderView(viewModel: viewModel)
                ForEach(viewModel.coinData, id: \.self) { item in
                    WalletMainListRow(coinInfo: item)
                        .listRowInsets(EdgeInsets(top: 0, leading: 22, bottom: 14, trailing: 22))
                }
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
        .background(Color.veryLightBlue)
        
    }
}
#if DEBUG
struct WalletMainView_Previews: PreviewProvider {
    static var previews: some View {
        WalletMainView()
    }
}
#endif

struct ListHeaderView: View {
    var viewModel: WalletMainViewModel
    
    var body: some View {
        Section { // ≒ tableView에서 Header 설정하듯이..
            HStack {
                Image("ic_wallet_main")
                    .frame(width: 65, height: 65)
                    .padding(.top, 30)
                    .padding(.leading, 12)
                    .padding(.bottom, 22)
                VStack(alignment: .leading) {
                    //viewModel 에서 날짜 데이터 보여주는 text
                    Text(viewModel.nowDate)
                        .font(.notoSansRegular12)
                        .foregroundStyle(Color.battleshipGrey)
                    HStack(spacing: 5) {
                        Text(viewModel.totalBalance.convertBalanceShorted())
                            .minimumScaleFactor(0.5) //글자수 작아지게
                            .font(.notoSansBold32)
                            .foregroundStyle(Color.nightBlue)
                        Text("KRW")
                            .font(.notoSansRegular12)
                            .foregroundStyle(Color.battleshipGrey)
                            .padding(.trailing, 10)
                    
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(Color.black.opacity(0.1).clipShape(RoundedRectangle(cornerRadius:16)))
            .padding(.top, 16)
            .padding(.bottom, 30)
            .padding(.leading, 22)
            .padding(.trailing, 22)
            .listRowInsets(EdgeInsets()) //header와 row사이 padding 지우기
            .listRowSeparator(.hidden)
            
        }
        .frame(height: 152)
        .listRowBackground(Color.clear)
        .frame(maxWidth: .infinity)
    }
}
