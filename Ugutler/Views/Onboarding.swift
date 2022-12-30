//
//  Onboarding.swift
//  Ugutler
//
//  Created by Waris Ruzi on 2022/07/06.
//

import SwiftUI
import RiveRuntime


struct Onboarding: View {
    let button = RiveViewModel(fileName: "button")
    @State var showModal = false
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
           background
            
            content
                .offset(y: showModal ? -50 : 0)
            
            Color("Shadow")
                .opacity(showModal ? 0.4 : 0)
                .ignoresSafeArea()
            
            if showModal {
                SignInView(showModal: $showModal)
                    //edge: .top .trailing . bottom
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                    .overlay(
                        Button{
                            withAnimation(.spring()) {
                            showModal = false
                            }
                        } label: {
                            Image(systemName: "xmark")
                                .frame(width: 36, height: 36)
                                .foregroundColor(.black)
                                .background(.white)
                                .mask(Circle())
                            .shadow(color: Color("Shadow").opacity(0.3), radius: 5, x: 0, y: 3)
                        }
                            .frame(maxHeight: .infinity, alignment: .bottom)
                    )
                    .zIndex(1)
            }
            
            Button{
                withAnimation{
                    show = false 
                }
            } label: {
                Image(systemName: "xmark")
                    .frame(width: 36, height: 36)
                    .background(.black)
                    .foregroundColor(.white)
                    .mask(Circle())
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding(20)
            .offset(y: showModal ? -20 : 80)
             
            }
            
        }
    
    var content: some View {
        VStack(alignment: .trailing, spacing: 16) {
            Text("كود & لايىھە ئۆگىنىڭ")
                .font(.custom("UKIJ Kufi", size: 80, relativeTo: .largeTitle))
                .multilineTextAlignment(.trailing)
                .frame(maxWidth: 300, alignment: .trailing)
               // .frame(alignment: .center)
            
            Text("ئەڭ يېڭى پروگرامما تىلى ۋە لايىھە ئۇقۇملىرى دەرىسلىرى سىزنى يېڭى تېخنىكا ۋە خىزمەت بىلەن تەمىنلەيدۇ.")
                .customFont(.body)
                .opacity(0.7)
                .frame(maxWidth: .infinity, alignment: .leading)
                .multilineTextAlignment(.trailing)

            
            Spacer()
                
    
            button.view()
                .frame(width: 236, height: 64)
                .overlay(
                    Label("ئۆگىنىشنى باشلاڭ", systemImage: "arrow.backward")
                        .font(.custom("UKIJ Tuz Tom", size: 18, relativeTo: .title2))
                        .offset(x: 4, y: 4)
                     
                        
                )
                .background(
                    Color.black
                        .cornerRadius(30)
                        .blur(radius: 10)
                        .opacity(0.3)
                        .offset(y: 10)
                )
                .onTapGesture {
                    button.play(animationName: "active")
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                      //  withAnimation(.spring()) {
                            showModal = true
                        }
                    }

            
            Text("ئەپىمىزدە 20 سائەتتىن ئارتۇق دەرسلىك 50دىن ئارتۇق ماترىيال ۋە كومپيۇتىر تېخنىكىسغا ئائىت كىتاپ مەنبەسى بار")
                .customFont(.footnote)
                .opacity(0.7)
                .multilineTextAlignment(.trailing)

                
        }
        .padding(40)
        .padding(.top, 40)
    }
    
    var background: some View{
        RiveViewModel(fileName: "shapesme").view()
            .ignoresSafeArea()
            .blur(radius: 30)
           .background(
               Image("Spline")
                    .blur(radius: 50)
                    .offset(x: 200, y: 100)
       )
    }
    
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding(show: .constant(true))
    }
}
