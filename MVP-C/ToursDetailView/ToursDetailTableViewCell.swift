//
//  ToursDetailTableViewCell.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 5/11/21.
//

import UIKit

class ToursDetailTableViewCell: UITableViewCell {

    static let identifier = "ToursDetailTableViewCell"
    
    @IBOutlet weak var star5: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var titleIdiom: UILabel!
    @IBOutlet weak var iconIdiom: UIImageView!
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var iconTime: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var iconTitle: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "ToursDetailTableViewCell", bundle: nil)
    }
    func initView() {
        separatorInset = UIEdgeInsets.zero
    }
}
