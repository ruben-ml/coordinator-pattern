//
//  Information.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 20/9/21.
//

import Foundation
import UIKit

struct Information {
    let title: String
    let image: UIImage?
}

let fields: [Information] = [Information(title: "Documentation", image: R.image.documentation()), Information(title: "Calendar", image: R.image.calendar()), Information(title: "Idiom", image: R.image.idiom()), Information(title: "Currency", image: R.image.currency()), Information(title: "Price", image: R.image.price()), Information(title: "Weather", image: R.image.weather())]
