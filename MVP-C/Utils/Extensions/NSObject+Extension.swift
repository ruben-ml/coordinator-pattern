//
//  NSObject+Extension.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 8/11/21.
//

import Foundation

extension NSObject {
    var className: String {
        return String(describing: type(of: self))
    }
    class var className: String {
        return String(describing: self)
    }
}
