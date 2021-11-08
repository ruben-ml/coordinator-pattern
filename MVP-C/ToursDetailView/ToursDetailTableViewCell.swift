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
        contentView.layer.cornerRadius = contentView.layer.frame.size.height / 4
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setGradients(view: contentView)
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 2, left: 15, bottom: 2, right: 15))
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "ToursDetailTableViewCell", bundle: nil)
    }

    func setGradients(view: UIView) {
        let gradientLayer = CAGradientLayer()
        let frame = CGRect.init(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        gradientLayer.frame = frame
        gradientLayer.colors = [UIColor.cellColor1.cgColor, UIColor.cellColor2.cgColor, UIColor.cellColor3.cgColor, UIColor.cellColor4.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradientLayer.zPosition = -1
        gradientLayer.cornerRadius = view.frame.size.height / 6
        gradientLayer.masksToBounds = true
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
