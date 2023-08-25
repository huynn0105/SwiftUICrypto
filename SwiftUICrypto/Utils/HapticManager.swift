//
//  HapticManager.swift
//  SwiftUICrypto
//
//  Created by Klabs Mobile on 24/08/2023.
//

import Foundation
import SwiftUI

class HapticManager {
    static let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType){
        generator.notificationOccurred(type)
    }
}
