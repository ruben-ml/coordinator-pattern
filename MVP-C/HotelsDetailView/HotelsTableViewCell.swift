//
//  HotelsTableViewCell.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 21/9/21.
//

import UIKit

class HotelsTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imageHotels: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setupHotels(with field: Hotel) {
        lblTitle.text = field.title
        imageHotels.image = field.image
        lblDescription.text = field.ubicacion
    }

}
