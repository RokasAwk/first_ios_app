import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color
                .blue.opacity(0.5)
                .ignoresSafeArea() // 滿版
            
            VStack {
                Image(systemName: "pawprint.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Welcome to iOS app")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .fontWeight(.semibold)
                Text("TAP")
                    .font(.title3)
                    .fontWeight(.light)
                    .padding()
                    .background(Color.gray.opacity(0.5))
             
            }
            .padding()
        }
    }
}
 
#Preview {
    ContentView()
}
