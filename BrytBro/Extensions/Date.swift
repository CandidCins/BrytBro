//
//  Date.swift
//  BrytBro
//
//  Created by DJ on 12/10/21.
//

import Foundation

extension Date {
    
    init(coinGeckoString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: coinGeckoString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
    private var shortFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
     func asShortDateString() -> String {
        return shortFormatter.string(from: self)
    }
    
}
