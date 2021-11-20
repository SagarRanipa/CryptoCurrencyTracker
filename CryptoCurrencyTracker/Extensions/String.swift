//
//  String.swift
//  CryptoCurrencyTracker
//
//  Created by Sagar patel on 2021-09-17.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
