import SwiftUI

struct ContentView: View {
    
    let helloWorld: String = "Hello World"
    let helloProgrammer: String = "Hello Programmer"
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        ZStack {
            Color
                .blue.opacity(0.5)
                .ignoresSafeArea() // 滿版
            
            VStack (spacing: 20) {
                VStack {
                    Title()
                    Text("Make sure you are ready")
                        .foregroundColor(Color.white)
                        .font(.system(size: 24))
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                    
                    
                }
                .padding()
                
                
                UserImg()
                
                Text("Need help with coding problems? Register!")
                
                Spacer()
                
                if verticalSizeClass == .compact {
                    HSignUpButtonGroup()
                } else {
                    VSignUpButtonGroup()
                }
                                
                
            }
            .padding(.top, 30)
           
        }
    }
    
}


struct VSignUpButtonGroup: View {
    var body: some View {
        VStack{
            Button {
                
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.indigo)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button {
                
            } label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 10))}
    }
}

struct HSignUpButtonGroup: View {
    var body: some View {
        HStack{
            Button {
                
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.indigo)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button {
                
            } label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 10))}
    }
}

struct UserImg: View {
    var body: some View {
        HStack(alignment: .bottom,
               spacing: 10)
        {
            Image("user1")
                .resizable()
                .scaledToFit()
            
            Image("user2")
                .resizable()
                .scaledToFit()
            
            Image("user3")
                .resizable()
                .scaledToFit()
        }
        .padding(.horizontal,30)
    }
}

struct Title: View {
    var body: some View {
        Text("Welcome to iOS app")
            .foregroundColor(Color.white)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .fontWeight(.semibold)
    }
}

#Preview("ContentView") {
    ContentView()
}

#Preview("ContentView (Landscape Left)",traits: .landscapeLeft) {
    ContentView()
}
