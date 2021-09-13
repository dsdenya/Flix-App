//
//  MTUserDefaults.swift
//  Flix App
//
//  Created by Aloha on 9/13/21.
//

import Foundation

struct MTUserDefaults {
    static var shared = MTUserDefaults()
    
    var theme: Theme {
        get {
            return Theme(rawValue: UserDefaults.standard.integer(forKey: "selectedTheme")) ?? .light
        }
        set {
            UserDefaults.standard.set(newValue.rawValue, forKey: "selectedTheme")
        }
        
    }
  
}

