//
//  String.swift
//  BrytBro
//
//  Created by DJ on 12/13/21.
//

import Foundation

extension String {
    
    
    //of: "<[^>]+>", with: "" -> is script that finds html in strings
    var removingHTMLOccurences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
