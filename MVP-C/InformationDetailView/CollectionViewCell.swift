//
//  CollectionViewCell.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 20/9/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblImage: UILabel!
    
    func setup(with field : Information) {
        imageView.image = field.image
        lblImage.text = field.title
    }
}
