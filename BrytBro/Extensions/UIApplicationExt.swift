//
//  UIApplicationExt.swift
//  BrytBro
//
//  Created by DJ on 12/3/21.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    
    // dismisses keyboard 
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
