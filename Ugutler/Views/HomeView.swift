//
//  HomeView.swift
//  Ugutler
//
//  Created by Waris  2022/07/07.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView {
                content
            }
        }
    }
    
    var content: some View{
        VStack(alignment: .trailing, spacing: 0) {
            Text("ئۈگۈتلەر")
                .customFont(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20){
                    ForEach(courses) { course in
                        VCard(course: course)
                    }
                }
                .padding(20)
                .padding(.bottom, 10)
            }
            
            Text("يېقىنقى")
                .customFont(.headline)
                .padding(.horizontal, 20)
            
            VStack(spacing: 20) {
                ForEach(courseSections) { section in
                    HCard(section: section)
                }
            }
            .padding(20)

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
