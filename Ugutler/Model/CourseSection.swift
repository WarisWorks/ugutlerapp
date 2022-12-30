//
//  CourseSection.swift
//  AnimatedApp
//
//  Created by Meng To on 2022-04-14.
//

import SwiftUI

struct CourseSection: Identifiable {
    var id = UUID()
    var title: String
    var caption: String
    var color: Color
    var image: Image
}

var courseSections = [
    CourseSection(title: "فونت تەڭشەش", caption: "سىن كۆرۈش - 15 مىنۇت", color: Color(hex: "9CC5FF"), image: Image("Topic 2")),
    CourseSection(title: "ھەرىكەتلىك ئۈنۈم", caption: "سىن كۆرۈش - 5 مىنۇت", color: Color(hex: "6E6AE8"), image: Image("Topic 1")),
    CourseSection(title: "مۇندەرىجە تۈزۈش", caption: "سىن كۆرۈش - 10 مىنۇت", color: Color(hex: "af95fb"), image: Image("Topic 2")),
    CourseSection(title: "دەسلەپكى ساۋات", caption: "سىن كۆرۈش - 25 مىنۇت", color: Color(hex: "50a7f5"), image: Image("Topic 1"))
]
