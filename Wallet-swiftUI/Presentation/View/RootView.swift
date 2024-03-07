//
//  RootView.swift
//  Wallet-swiftUI
//
//  Created by 바다영 on 2024/02/08.
//

import SwiftUI

let tabImageOn_1 = UIImage(named: "tabbarOn_1")
let tabImageOn_2 = UIImage(named: "tabbarOn_2")
let tabImageOn_3 = UIImage(named: "tabbarOn_3")
let tabImageOff_1 = UIImage(named: "tabbarOff_1")
let tabImageOff_2 = UIImage(named: "tabbarOff_2")
let tabImageOff_3 = UIImage(named: "tabbarOff_3")

struct RootView: View {
    @State private var selection = 0
    
    
    var body: some View {
        
        
        TabView(selection: $selection) {
            
            WalletMainView()
                .tabItem({
                    Text("")
                    if selection == 0 {
                        Image(uiImage: tabImageOn_1 ?? UIImage())
                    }
                    Image(uiImage: tabImageOff_1 ?? UIImage())
                    
                })
                .tag(0)
            IntroduceMainView()
                .tabItem({
                    Text("")
                    if selection == 1 {
                        Image(uiImage: tabImageOn_2 ?? UIImage())
                    }
                    Image(uiImage: tabImageOff_2 ?? UIImage())
                })
                .tag(1)
            
            MyMainView()
                .tabItem({
                    Text("")
                    if selection == 2 {
                        Image(uiImage: tabImageOn_3 ?? UIImage())
                    }
                    Image(uiImage: tabImageOff_3 ?? UIImage())
                })
                .tag(2)
        }.onAppear{
            UITabBar.appearance().backgroundColor = .white
        }
        
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
