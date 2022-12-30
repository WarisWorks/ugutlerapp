//
//  Notification.swift
//  Ugutler
//
//  Created by Waris on 2022/07/08.
//

import SwiftUI

struct Notification: View {
    var body: some View {
        
        VStack(spacing: 20) {
            ForEach(courseSections) { section in
                HCard(section: section)
            }
        }
    }
}

struct Notification_Previews: PreviewProvider {
    static var previews: some View {
        Notification()
    }
}
