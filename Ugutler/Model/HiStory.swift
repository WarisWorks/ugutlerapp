//
//  HiStory.swift
//  Ugutler
//
//  Created by Waris on 2022/07/08.
//

import SwiftUI


struct HiStory: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20){
                ForEach(courses) { course in
                    VCard(course: course)
                }
            }
            .padding(20)
            .padding(.bottom, 10)
        }
        
    }
}

struct HiStory_Previews: PreviewProvider {
    static var previews: some View {
        HiStory()
    }
}
