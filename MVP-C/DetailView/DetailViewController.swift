//
//  DetailViewController.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 16/9/21.
//

import UIKit

protocol detailViewProtocol: AnyObject {
    func updateUI()
}

class DetailViewController: UIViewController, Storyboarded {

    var presenter: detailPresenterProtocol?
   
    @IBOutlet var buttons: [UIButton]!
    
    @IBAction func switchTapped(_ sender: Any) {
        presenter?.buttonPress()
    }
    
    @IBAction func toursTapped(_ sender: Any) {
        presenter?.buttonTours()
    }
    
    @IBAction func gastronomyTapped(_ sender: Any) {
        presenter?.buttonGastronomy()
    }
    
    @IBAction func transportTapped(_ sender: Any) {
        presenter?.buttonTransport()
    }
    @IBAction func hotelsTapped(_ sender: Any) {
        presenter?.buttonHotels()
    }
    @IBAction func shopsTapped(_ sender: Any) {
        presenter?.buttonShops()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension DetailViewController: detailViewProtocol {
    func updateUI() {
        for array in buttons {
            array.layer.cornerRadius = array.layer.frame.height / 4
            array.backgroundColor = UIColor(red: 0, green: 0.42, blue: 0.58, alpha: 1.0)
            array.setTitleColor(UIColor.orange, for: .normal)
        }
        
    }
    
    
}
