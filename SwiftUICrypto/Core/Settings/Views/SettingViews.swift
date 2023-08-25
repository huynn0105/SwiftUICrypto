//
//  SettingViews.swift
//  SwiftUICrypto
//
//  Created by Klabs Mobile on 25/08/2023.
//

import SwiftUI

struct SettingViews: View {
    @Environment(\.presentationMode) var presentationMode
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com")
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("header"),footer: Text("footer")) {
                    Text("Hi")
                    Text("Hi")

                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingViews_Previews: PreviewProvider {
    static var previews: some View {
        SettingViews()
    }
}
