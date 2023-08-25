//
//  SwiftUICryptoApp.swift
//  SwiftUICrypto
//
//  Created by Klabs Mobile on 09/08/2023.
//

import SwiftUI

@main
struct SwiftUICryptoApp: App {
    @StateObject private var vm = HomeViewModel()
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView().navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
