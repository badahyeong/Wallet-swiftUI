//
//  WalletMainView.swift
//  Wallet-swiftUI
//
//  Created by 바다영 on 2024/02/08.
//

import SwiftUI

struct WalletMainView: View {
    var body: some View {
        VStack {
            Text("Adappter wallet")
                .font(.notoSansBold22)
            VStack {
                VStack {
                    HStack {
                        Image("")
                        Text("Wallet1")
                    }
                }
                .background(Color("Dark Gray") )
                .cornerRadius(17)
                Text("aa")
                    .foregroundColor(.white)
                
            }
            .background(Color(.black))
            .cornerRadius(30)
            
            
        }
        
    }
}

struct WalletMainView_Previews: PreviewProvider {
    static var previews: some View {
        WalletMainView()
    }
}
