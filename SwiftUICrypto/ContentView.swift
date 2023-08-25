//
//  ContentView.swift
//  SwiftUICrypto
//
//  Created by Klabs Mobile on 09/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background.ignoresSafeArea()
            
            VStack{
                Text("Accent Color").foregroundColor(Color.theme.accent)
                Text("Secondary Color").foregroundColor(Color.theme.secondary)
                Text("Red color").foregroundColor(Color.theme.red)
                Text("Green Color").foregroundColor(Color.theme.green)
                
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
