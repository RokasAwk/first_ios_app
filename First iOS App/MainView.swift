import SwiftUI

struct MainView: View {

    @State private var showError = false
    @Environment(\.verticalSizeClass) var verticalSizeClass

    var body: some View {
        NavigationStack {
            ZStack {
                Color
                    .white
                    .ignoresSafeArea()  // 滿版
                
                VStack(spacing: 20) {
                    
                    title()
                        .padding()
                    
                    
                    Image("home")
                        .resizable()
                        .frame(width:300, height: 300)
                    
                    
                    Spacer()
                    
                    VStack {
                        HStack {
                            buildText(text: "立即加入！")
                            Button {
                                
                            } label: {
                                buildText(
                                    text: "看看能獲得什麼？",
                                    textColor: Color.blue.opacity(0.6))
                                
                                
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.horizontal, 45)
                    
                    if verticalSizeClass == .compact {
                        HSignUpButtonGroup(showError: $showError)
                    } else {
                        VSignUpButtonGroup(showError: $showError)
                    }
                    
                }
                .padding(.top, 30)
                
            }
        }
    }

}

struct buildText: View {
    var text: String
    var textColor: Color?
    var body: some View {
        Text(text)
            .foregroundStyle(textColor ?? Color.black)
    }
}

struct signUpButton: View {
    @Binding var showError: Bool
    
    var body: some View {
        Button {
            showError = true
        } label: {
            Text("註冊")
        }
        .frame(width: 200)
        .padding()
        .foregroundStyle(.white)
        .background(.blue)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .alert("壽司狼說", isPresented: $showError) {
            Button("好") {}
        } message: {
            Text("抱歉，這個還沒做辣！")
        }
    }
}

struct logInButton: View {
    
    var body: some View {
           
        Button {} label: {
            Text("登入")
        }
        .frame(width: 200)
        .padding()
        .foregroundStyle(.white)
        .background(.gray)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}



struct VSignUpButtonGroup: View {
    
    @Binding var showError: Bool
    
    var body: some View {
        VStack {
            signUpButton(showError: $showError)
            NavigationLink(
                destination: HomeView(),
                label: {
                    logInButton()
                }
            )
        }
    }
}

struct HSignUpButtonGroup: View {
    
    @Binding var showError: Bool
    
    var body: some View {
        HStack {
            signUpButton(showError: $showError)
            logInButton()
        }
    }
}

struct title: View {
    var body: some View {
        Text("壽司狼的iOS世界")
            .foregroundColor(Color.black)
            .shadow(
                color: Color.gray.opacity(0.5),
                radius: 1,
                x: -3,
                y: 2
            )
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .fontWeight(.semibold)
    }
}

#Preview("ContentView") {
    MainView()
}

#Preview("ContentView (Landscape Left)", traits: .landscapeLeft) {
    MainView()
}
