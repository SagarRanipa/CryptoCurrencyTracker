//
//  HapticManager.swift
//  CryptoCurrencyTracker
//
//  Created by Sagar patel on 2021-08-07.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType){
        generator.notificationOccurred(type)
    }
}
