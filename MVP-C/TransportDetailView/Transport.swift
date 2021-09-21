//
//  Transport.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 21/9/21.
//

import Foundation
import UIKit

struct Transport {
    let title: String
    let image: UIImage?
}

let transports: [Transport] = [Transport(title: "Tranvía", image: R.image.trolleyCar()), Transport(title: "Funicular", image: R.image.cableCar()), Transport(title: "Autobús", image: R.image.bus()), Transport(title: "Taxi", image: R.image.taxi()), Transport(title: "Barco", image: R.image.boat())]
