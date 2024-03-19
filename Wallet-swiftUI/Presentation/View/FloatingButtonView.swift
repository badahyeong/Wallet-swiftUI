//
//  FloatingButtonView.swift
//  Wallet-swiftUI
//
//  Created by 바다영 on 3/19/24.
//

import SwiftUI

struct FloatingButtonView: View {
    @State private var isButtonClicked = false
    
    var body: some View {
        
        ZStack {
            // Background
            Color.black.opacity(isButtonClicked ? 0.7 : 0)// 버튼 누르면 딤 처리
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    // 팝업이 열려 있을 때 뒷배경을 탭하면 팝업을 닫음
                    isButtonClicked = false
                }
            
            HStack {
                Spacer()
                VStack(alignment: .trailing) {
                    Spacer()
                    if isButtonClicked {
                        FloatingMenuView(image: "ic_floating_property", menuName: "View all assets")
                            .transition(AnyTransition.opacity.animation(.easeInOut(duration: 0.1)))
                        FloatingMenuView(image: "ic_floating_setting", menuName: "Wallet management")
                            .transition(AnyTransition.opacity.animation(.easeInOut(duration: 0.3)))
                        FloatingMenuView(image: "ic_floating_add_coin", menuName: "Coin management")
                            .transition(AnyTransition.opacity.animation(.easeInOut(duration: 0.5)))
                        
                    }
                    Button(action: {
                        // 버튼을 눌렀을 때 실행될 액션 작성
                        
                        print("Clicked Floating Button")
                        self.isButtonClicked.toggle()
                    }) {
                        Image(isButtonClicked ? "ic_cancel_gray" : "ic_plus_white")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .rotationEffect(.degrees(isButtonClicked ? 90: 0))
                            .frame(width: 56, height: 61)
                            .background(isButtonClicked ? Color.white : Color.clearBlue)
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.25), radius: 6, x: 0, y: 2)
                    }
                }
            }
            .padding(.trailing, 15)
            .padding(.bottom, 18)
        }
    }
    
}

/* 플로팅 버튼 누르면 노출되는 메뉴 아이템 */
struct FloatingMenuView: View {
    var image: String
    var menuName: String
    
    var body: some View {
        HStack {
            Text(menuName)
                .font(.notoSansMedium15)
                .foregroundStyle(.white)
            ZStack {
                Circle()
                    .foregroundColor(.clearBlue)
                    .frame(width: 52, height: 52)
                Image(image)
                
            }
        }
    }
}

#Preview {
    FloatingButtonView()
}
