//
//  UIColorExtension.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 8/11/21.
//

import Foundation
import UIKit

extension UIColor {
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalidad red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0,
                  green: CGFloat(green) / 255.0,
                  blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
    
    static let cellColor1 = UIColor(red: 0, green: 0.42, blue: 0.58, alpha: 1)
    static let cellColor2 = UIColor(red: 0.99, green: 0.41, blue: 0.03, alpha: 1)
    static let cellColor3 = UIColor(red: 0.99, green: 0.57, blue: 0.03, alpha: 1)
    static let cellColor4 = UIColor(red: 0.994, green: 0.23, blue: 0.03, alpha: 1)
    
}
