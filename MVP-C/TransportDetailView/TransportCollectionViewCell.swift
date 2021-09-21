//
//  TransportCollectionViewCell.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 21/9/21.
//

import UIKit

class TransportCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageTransport: UIImageView!
    @IBOutlet weak var lblTransport: UILabel!
    
    func setupTransport(with field: Transport) {
        imageTransport.image = field.image
        lblTransport.text = field.title
    }
}
