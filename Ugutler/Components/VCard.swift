//
//  VCard.swift
//  Ugutler
//
//  Created by Waris  2022/07/07.
//

import SwiftUI

struct VCard: View {
    var course: Course
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 8) {
            Text(course.title)
                .customFont(.body)
            //SwiftUI Previews for RTL direction
                .environment(\.layoutDirection, .rightToLeft)
                .frame(maxWidth: 170, alignment: .trailing)
                .layoutPriority(1)
            Text(course.subtitle)
                .customFont(.subheadline)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .environment(\.layoutDirection, .rightToLeft)
                .opacity(0.7)
            Text(course.caption)
                .customFont(.footnote2)
              //  .opacity(0.7)
            Spacer()
            HStack {
                ForEach(Array([2, 3, 4].shuffled().enumerated()), id: \.offset) { index, number in
                    Image("Avatar \(number)")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .mask(Circle())
                        .offset(x: CGFloat(index * -20))
                }
            }
            
        }
        .foregroundColor(.white)
        .padding(30)
        .frame(width: 260, height: 310)
        .background(.linearGradient(colors: [course.color,course.color.opacity(0.5)], startPoint: .topTrailing, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: course.color.opacity(0.3), radius: 8, x: 0, y: 12)
        .shadow(color: course.color.opacity(0.3), radius: 8, x: 0, y: 1)
        .overlay(
            course.image
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(20)
        )
        
    }
}

struct VCard_Previews: PreviewProvider {
    static var previews: some View {
        VCard(course: courses[0])
    }
}
