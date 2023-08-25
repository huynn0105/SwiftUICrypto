//
//  XMarkButton.swift
//  SwiftUICrypto
//
//  Created by Klabs Mobile on 24/08/2023.
//

import SwiftUI

struct XMarkButton: View {
    @Environment (\.presentationMode) var presentationMode

    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark").font(.headline)
            })
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
    }
}
