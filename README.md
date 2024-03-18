
# 가상화폐 자산 확인 서비스 앱
## 프로젝트 소개
* 기존 개발되어 있던 블록체인 월렛 앱 SwiftUI 적용하여 변경
* 테스트 데이터를 사용하여 데이터 노출

### 1. 화면
[메인]

### 2.개발환경
- Swift
- SwiftUI
- Sourcetree


### 3.프로젝트 구조

📦Wallet-swiftUI<br />
 ┣ 📂Domain<br />
 ┃ ┣ 📂Entities<br />
 ┃ ┃ ┗ 📜WalletMainList.swift<br />
 ┃ ┗ 📂Enum<br />
 ┃ ┃ ┗ 📜CoinType.swift<br />
 ┣ 📂Helpers<br />
 ┃ ┗ 📜Utils.swift<br />
 ┣ 📂Presentation<br />
 ┃ ┣ 📂Extension<br />
 ┃ ┃ ┣ 📜CALayer+Extension.swift<br />
 ┃ ┃ ┣ 📜Double+Extension.swift<br />
 ┃ ┃ ┣ 📜Font+Extension.swift<br />
 ┃ ┃ ┣ 📜String+Extension.swift<br />
 ┃ ┃ ┗ 📜WalletMainViewModel.swift<br />
 ┃ ┣ 📂New Group<br />
 ┃ ┣ 📂Row<br />
 ┃ ┃ ┗ 📜WalletMainListRow .swift<br />
 ┃ ┗ 📂View<br />
 ┃ ┃ ┣ 📜IntroduceMainView.swift<br />
 ┃ ┃ ┣ 📜MyMainView.swift<br />
 ┃ ┃ ┣ 📜RootView.swift<br />
 ┃ ┃ ┗ 📜WalletMainView.swift<br />
 ┣ 📂Preview Content<br />
 ┃ ┣ 📂Preview Assets.xcassets<br />
 ┃ ┃ ┗ 📜Contents.json<br />
 ┃ ┗ 📜Wallet_swiftUIApp.swift<br />
 ┣ 📂Resource<br />
 ┃ ┣ 📂Assets.xcassets<br />
 ┃ ┃ ┣ 📂AccentColor.colorset<br />
 ┃ ┃ ┃ ┗ 📜Contents.json<br />
 ┃ ┃ ┣ 📂AppIcon.appiconset<br />
 ┃ ┃ ┃ ┣ 📜Contents.json<br />
             *<br />
             *<br />
             *<br />
 ┃ ┃ ┣ 📂AppIcon.dev.appiconset<br />
 ┃ ┃ ┣ 📂AppSplash.imageset<br />
 ┃ ┃ ┗ 📜Contents.json<br />
 ┃ ┣ 📂Color.xcassets<br />
 ┃ ┃ ┣ 📂#VeryLightBlue.colorset<br />
 ┃ ┃ ┃ ┗ 📜Contents.json<br />
 ┃ ┃ ┣ 📂#azure.colorset<br />
 ┃ ┃ ┃ ┗ 📜Contents.json<br />
             *<br />
             *<br />
             *<br />
 ┃ ┃ ┣ 📂#battleship grey.colorset<br />
 ┃ ┃ ┃ ┗ 📜Contents.json<br />
 ┃ ┃ ┗ 📜Contents.json<br />
 ┃ ┣ 📂Font<br />
 ┃ ┃ ┣ 📜NotoSansCJKkr-Bold.otf<br />
 ┃ ┃ ┣ 📜NotoSansCJKkr-Medium.otf<br />
 ┃ ┃ ┣ 📜NotoSansCJKkr-Regular.otf<br />
 ┃ ┃ ┗ 📜NotoSansKR-Black.otf<br />
 ┃ ┗ 📜.DS_Store<br />
 ┣ 📜.DS_Store<br />
 ┣ 📜Color+Extension.swift<br />
 ┗ 📜Info.plist<br />

 
