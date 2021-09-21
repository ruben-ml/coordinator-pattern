//
//  Hotel.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 21/9/21.
//

import Foundation
import UIKit

struct Hotel {
    let title: String
    let image: UIImage?
    let ubicacion: String
    
    init(title: String, image: UIImage?, ubicacion: String) {
        self.title = title
        self.image = image
        self.ubicacion = ubicacion
    }
}

let arrayHotels: [Hotel] = [Hotel(title: "Crowne Plaza Antalya", image: R.image.hotel1(), ubicacion: "Gürsu, Akdeniz Blv. 304. Sokak, 07070 Konyaaltı/Antalya, Turquía"), Hotel(title: "Transatlantik Hotel", image: R.image.hotel2(), ubicacion: "Göynük, 07985 Kemer/Antalya, Turquía"), Hotel(title: "Aquasis de Luxe", image: R.image.hotel3(), ubicacion: "Çamlık, Üç Mevsim Cd. No:77, 09270 Didim/Aydın, Turquía")]
