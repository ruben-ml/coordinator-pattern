//
//  shopsTableViewCell.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 28/10/21.
//

import UIKit

class shopsTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var descriptionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        descriptionLbl.numberOfLines = 0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
