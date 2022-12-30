//
//  SignInView.swift
//  Ugutler
//
//  Created by Waris  2022/07/06.
//

import SwiftUI
import RiveRuntime

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    @State var isLoading = false
    @Binding var showModal: Bool
    let check = RiveViewModel(fileName: "check", stateMachineName: "State Machine 1")
    let confetti = RiveViewModel(fileName: "confetti", stateMachineName: "State Machine 1")
    
    func logIn(){
        isLoading = true
        
        if email != "" {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                check.triggerInput("Check")
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                isLoading = false
                confetti.triggerInput("Trigger explosion")
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                withAnimation{
                    showModal = false
                }
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                check.triggerInput("Error")
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                isLoading = false
            }
        }
      
    }
    var body: some View {
        VStack(spacing: 24) {
            Text("تىزىملىتىش")
                .customFont(.largeTitle)
        
    Text("20 سائەتتىن ئارتۇق دەرسلىك ۋە ماترىياللار بار، رىئال پروجىكەت  ۋە قوللانمىلاردىن پايدىلىناي دىسڭىز تىزىملىتىپ كىرىڭ.")
            .customFont(.headline)
            .multilineTextAlignment(.trailing)
            
            VStack(alignment: .trailing) {
                Text("ئېلخەت")
                    .customFont(.subheadline)
                    .foregroundColor(.secondary)
                TextField("", text: $email)
                    .customTextField()
            }
            
            VStack(alignment: .trailing) {
                Text("مەخپىي نومۇر")
                    .customFont(.subheadline)
                    .foregroundColor(.secondary)
                SecureField("", text: $password)
                    .customTextField(image: Image("Icon Lock"))
            }
            
            Button{
               logIn()
            } label : {
                Label("تىزىملىتىش", systemImage: "arrow.backward")
                    .customFont(.headline)
                    .padding(20)
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: "7DC4F7"))
                    .foregroundColor(.white)
                    .cornerRadius(20, corners: [.topLeft, .bottomRight, .bottomLeft])
                    .cornerRadius(8, corners: [.topRight])
                .shadow(color: Color(hex: "7DC4F7").opacity(0.5), radius: 20, x: 0, y: 10)
            }
            
            HStack {
                Rectangle().frame(height: 1).opacity(0.1)
                Text("ياكى").customFont(.subheadline).foregroundColor(.black.opacity(0.3))
                Rectangle().frame(height: 1).opacity(0.1)
            }
        
        
        Text("ئېلخېتىڭىز ۋە ياكى ئالما،گوگۇل ئاكونتىڭز بىلەن تىزىملتىپ كىرىڭ")
            .customFont(.footnote)
            .foregroundColor(.secondary)
            
            HStack {
                Image("Logo Email")
                Spacer()
                Image("Logo Apple")
                Spacer()
                Image("Logo Google")
            }
        }
        .padding(30)
        .background(.regularMaterial)
        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: Color("Shadow").opacity(0.3), radius: 5, x: 0, y: 3)
            .shadow(color: Color("Shadow").opacity(0.3), radius: 30, x: 0, y: 30)
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous) .stroke(.linearGradient(colors: [.white.opacity(0.8), .white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing)))
            .padding()
            .overlay(
                ZStack{
                    if isLoading {
                        check.view()
                            .frame(width: 100, height: 100)
                            .allowsHitTesting(false)
                    }
                    confetti.view()
                        .scaleEffect(3)
                        .allowsHitTesting(false)
                }
              
            )
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(showModal: .constant(true))
    }
}
