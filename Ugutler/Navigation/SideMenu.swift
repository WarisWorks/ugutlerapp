//
//  SideMenu.swift
//  Ugutler
//
//  Created by Waris on 2022/07/07.
//

import SwiftUI
import RiveRuntime

struct SideMenu: View {
    @State var selectedMenu: SelectedMenu = .home
    @State var isDarkMode = false
    let icon = RiveViewModel(fileName: "icons", stateMachineName: "HOME_interactivity", artboardName: "HOME")
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "person")
                    .padding(12)
                    .background(.white.opacity(0.2))
                    .mask(Circle())
                VStack(alignment: .trailing, spacing: 2) {
                    Text("ۋارس")
                        .customFont(.body)
                    Text("ئەپ ئاچقۇچى")
                        .customFont(.subheadline)
                        .opacity(0.7)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding()

             
            Text("مۇندەرىجە")
                .customFont(.body)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal, 24)
                .padding(.top, 40)
                .opacity(0.7)
            
            VStack(alignment: .trailing, spacing: 0) {
                ForEach(menuItems) { item in
                   Rectangle()
                    .frame(height: 1)
                    .opacity(0.1)
                    .padding(.horizontal)
                MenuRow(item: item, selectedMenu: $selectedMenu)
                }
            }
            .padding(8)
            
            Text("ئىزلىرىم")
                .customFont(.body)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal, 24)
                .padding(.top, 40)
                .opacity(0.7)
            
            VStack(alignment: .trailing, spacing: 0) {
                ForEach(menuItems2) { item in
                   Rectangle()
                    .frame(height: 1)
                    .opacity(0.1)
                    .padding(.horizontal)
                MenuRow(item: item, selectedMenu: $selectedMenu)
                }
            }
            .padding(8)
            
            Spacer()

            HStack(spacing: 14) {
                menuItems3[0].icon.view()
                    .frame(width: 32, height: 32)
                    .opacity(0.6)
                    .onChange(of: isDarkMode) { newValue in
                        if newValue {
                            menuItems3[0].icon.setInput("active", value: true)
                        } else {
                            menuItems3[0].icon.setInput("active", value: false)
                       }
                    }
                Text(menuItems3[0].text)
                    .customFont(.subheadline)
                Toggle("", isOn: $isDarkMode)
            }
            .padding(20)
            
        }
        .foregroundColor(.white)
        .frame(maxWidth: 288, maxHeight: .infinity)
        .background(Color(hex: "17203A"))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .frame(maxWidth: .infinity, alignment: .trailing)
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu()
    }
}

struct MenuItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: RiveViewModel
    var menu: SelectedMenu
}



var menuItems = [
    MenuItem(text: "باش بەت", icon: RiveViewModel(fileName: "icons", stateMachineName: "HOME_interactivity", artboardName: "HOME"),menu: .home),
    MenuItem(text: "ئىزدەش", icon: RiveViewModel(fileName: "icons", stateMachineName: "SEARCH_Interactivity", artboardName: "SEARCH"),menu: .search),
    MenuItem(text: "ساقلىغانلىرىم", icon: RiveViewModel(fileName: "icons", stateMachineName: "STAR_Interactivity", artboardName: "LIKE/STAR"), menu: .favorites),
    MenuItem(text: "ياردەم", icon: RiveViewModel(fileName: "icons", stateMachineName: "CHAT_Interactivity", artboardName: "CHAT"), menu: .help)
]


var menuItems2 = [
    MenuItem(text: "ئىزلىرىم", icon: RiveViewModel(fileName: "icons", stateMachineName: "TIMER_Interactivity", artboardName: "TIMER"),menu: .history),
    MenuItem(text: "ئۇقتۇرۇش", icon: RiveViewModel(fileName: "icons", stateMachineName: "BELL_Interactivity", artboardName: "BELL"),menu: .notifications)
]

var menuItems3 = [
    MenuItem(text: "تەڭشەك", icon: RiveViewModel(fileName: "icons", stateMachineName: "SETTINGS_Interactivity", artboardName: "SETTINGS"),menu: .darkmode)
]

enum SelectedMenu: String {
    case home
    case search
    case favorites
    case help
    case history
    case notifications
    case darkmode
    
}
