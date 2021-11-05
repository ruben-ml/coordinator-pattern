//
//  ToursDTO.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 5/11/21.
//

import Foundation
 
struct ToursDTO {
    let titleName: String?
    let nameTours: String?
    let nameDate: String?
    let idiom: String?
    
    init(titleName: String, nameTours: String, nameDate: String, idiom: String) {
        self.titleName = titleName
        self.nameTours = nameTours
        self.nameDate = nameDate
        self.idiom = idiom
    }
}
