
#가상화폐 자산 확인 서비스 앱
##프로젝트 소개
* 기존 개발되어 있던 블록체인 월렛 앱 SwiftUI 적용하여 변경
* 테스트 데이터를 사용하여 데이터 노출

###1.개발환경
- Swift
- SwiftUI
- Sourcetree


###2.프로젝트 구조
📦Wallet-swiftUI
 ┣ 📂Domain
 ┃ ┣ 📂Entities
 ┃ ┃ ┗ 📜WalletMainList.swift
 ┃ ┗ 📂Enum
 ┃ ┃ ┗ 📜CoinType.swift
 ┣ 📂Helpers
 ┃ ┗ 📜Utils.swift
 ┣ 📂Presentation
 ┃ ┣ 📂Extension
 ┃ ┃ ┣ 📜CALayer+Extension.swift
 ┃ ┃ ┣ 📜Double+Extension.swift
 ┃ ┃ ┣ 📜Font+Extension.swift
 ┃ ┃ ┣ 📜String+Extension.swift
 ┃ ┃ ┗ 📜WalletMainViewModel.swift
 ┃ ┣ 📂New Group
 ┃ ┣ 📂Row
 ┃ ┃ ┗ 📜WalletMainListRow .swift
 ┃ ┗ 📂View
 ┃ ┃ ┣ 📜IntroduceMainView.swift
 ┃ ┃ ┣ 📜MyMainView.swift
 ┃ ┃ ┣ 📜RootView.swift
 ┃ ┃ ┗ 📜WalletMainView.swift
 ┣ 📂Preview Content
 ┃ ┣ 📂Preview Assets.xcassets
 ┃ ┃ ┗ 📜Contents.json
 ┃ ┗ 📜Wallet_swiftUIApp.swift
 ┣ 📂Resource
 ┃ ┣ 📂Assets.xcassets
 ┃ ┃ ┣ 📂AccentColor.colorset
 ┃ ┃ ┃ ┗ 📜Contents.json
 ┃ ┃ ┣ 📂AppIcon.appiconset
 ┃ ┃ ┃ ┣ 📜Contents.json
             *
             *
             *
 ┃ ┃ ┣ 📂AppIcon.dev.appiconset
 ┃ ┃ ┣ 📂AppSplash.imageset
 ┃ ┃ ┗ 📜Contents.json
 ┃ ┣ 📂Color.xcassets
 ┃ ┃ ┣ 📂#VeryLightBlue.colorset
 ┃ ┃ ┃ ┗ 📜Contents.json
 ┃ ┃ ┣ 📂#azure.colorset
 ┃ ┃ ┃ ┗ 📜Contents.json
             *
             *
             *
 ┃ ┃ ┣ 📂#battleship grey.colorset
 ┃ ┃ ┃ ┗ 📜Contents.json
 ┃ ┃ ┗ 📜Contents.json
 ┃ ┣ 📂Font
 ┃ ┃ ┣ 📜NotoSansCJKkr-Bold.otf
 ┃ ┃ ┣ 📜NotoSansCJKkr-Medium.otf
 ┃ ┃ ┣ 📜NotoSansCJKkr-Regular.otf
 ┃ ┃ ┗ 📜NotoSansKR-Black.otf
 ┃ ┗ 📜.DS_Store
 ┣ 📜.DS_Store
 ┣ 📜Color+Extension.swift
 ┗ 📜Info.plist


 ###3.화면
 [메인]
 
