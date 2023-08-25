//
//  Color.swift
//  SwiftUICrypto
//
//  Created by Klabs Mobile on 09/08/2023.
//

import Foundation
import SwiftUI

extension Color{
    static let theme = ColorTheme()
}

struct ColorTheme{
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondary = Color("SecondaryTextColor")
}
