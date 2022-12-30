//
//  SearchView.swift
//  Ugutler
//
//  Created by Waris on 2022/07/08.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack {
            VStack(alignment: .trailing, spacing: 4) {
                Spacer()
                HStack {
                    Spacer()
                    Image("Illustration 2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
                Text("يېڭى ئۆگەنگۈچىلەر ئۈچۈن")
                    .customFont(.headline)
                    .foregroundColor(Color.white)
                Text("10 بۆلەك دەرس")
                    .customFont(.subheadline)
                    .foregroundColor(Color.white)
            }
            .padding(.all)
            .frame(height: 200)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            .cornerRadius(20)
            .shadow(radius: 10)
            
            
            VStack(alignment: .trailing, spacing: 4) {
                Spacer()
                HStack {
                    Spacer()
                    Image("Illustration 1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
                Text("يېڭى ئۆگەنگۈچىلەر ئۈچۈن")
                    .customFont(.headline)
                    .foregroundColor(Color.white)
                Text("20 بۆلەك دەرس")
                    .customFont(.subheadline)
                    .foregroundColor(Color.white)
            }
            
            .padding(.all)
            .frame(height: 200)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            .cornerRadius(20)
        .shadow(radius: 10)
        }
        
        
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
