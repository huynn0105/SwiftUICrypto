//
//  UIApplication.swift
//  SwiftUICrypto
//
//  Created by Klabs Mobile on 23/08/2023.
//

import Foundation
import SwiftUI

extension UIApplication{
    func endEditting(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
