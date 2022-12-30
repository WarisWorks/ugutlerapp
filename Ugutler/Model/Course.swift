//
//  Course.swift
//  AnimatedApp
//
//  Created by Meng To on 2022-04-14.
//

import SwiftUI

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var caption: String
    var color: Color
    var image: Image
}

var courses = [
    Course(title: "SwiftUIتىلىدا جانلاندۇرما ئۈنۈمى", subtitle: "  iOS ئەپلىرىنى نۆلدىن باشلاپ قۇرۇپ چىقىڭ", caption: "20 بۆلەك  3 سائەت", color: Color(hex: "3a9df7"), image: Image("Topic 1")),
    Course(title: "SwiftUIدا تۇنجى ئەپىڭىزنى ياساڭ", subtitle: "ھەقىقىي ، تېز ۋە ھەر خىل قوللىنىشچان پروگراممىلارنى باشتىن-ئاخىر قۇرۇش ئارقىلىق Swift ۋە SwiftUI بىلىملىرىڭىزنى ئىشلىتىڭ", caption: "47 بۆلەك  11 سائەت", color: Color(hex: "6792FF"), image: Image("Topic 2")),
    Course(title: "SwiftUIدا iOS 16ئۈچۈن ئەپ ياساڭ", subtitle: "SwiftUI 4 دېتالىنى Xcode 14 ، SF بەلگىسى 3 ، Canvas ، تەڭكەش ، ئىزدىگىلى بولىدىغان ۋە باشقا نۇرغۇن نەرسىلەرنى ئىشلىتىپ خاس ئورۇنلاشتۇرۇش ، كارتون ۋە ئىشارەت بىلەن لايىھىلەپ ۋە كودلاشتۇرۇڭ.", caption: "21 بۆلەك  4 سائەت", color: Color(hex: "005FE7"), image: Image("Topic 1"))
]

