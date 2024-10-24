import SwiftUI
import AVFoundation // 文字轉語音

struct ContentView: View {
    
    let synthesizer = AVSpeechSynthesizer()
    let helloWorld: String = "Hello World"
    let helloProgrammer: String = "Hello Programmer"
    
    var body: some View {
        ZStack {
            Color
                .blue.opacity(0.5)
                .ignoresSafeArea() // 滿版
            
            VStack {
                VStack {
                    Image(systemName: "pawprint.fill")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Welcome to iOS app")
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                    Text("Make sure you are ready")
                        .foregroundColor(Color.white)
                        .font(.system(size: 24))
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                    
                    Button {
                        // What to perform
                        speak(text: helloWorld)
                    } label: {
                        // How the button looks like
                        Text(helloWorld)
                            .font(.system(.title3, design: .rounded))                    .fontWeight(.bold)
                            .fontWeight(.bold)
                            .padding()
                            .foregroundStyle(.white)
                            .background(Color.gray.opacity(0.5))
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                    }
                    
                    Button {
                        // What to perform
                        speak(text: helloProgrammer)
                    } label: {
                        // How the button looks like
                        Text(helloProgrammer)
                            .font(.system(.title3, design: .rounded))                    .fontWeight(.bold)
                            .fontWeight(.bold)
                            .padding()
                            .foregroundStyle(.white)
                            .background(Color.yellow.opacity(0.5))
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                    }
                    
                }
                .padding()
                
                Spacer()
            }
            .padding(.top, 30)
            
            
        }
    }
    
    
    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Fred")

        synthesizer.speak(utterance)
    }
}


#Preview {
    ContentView()
}




