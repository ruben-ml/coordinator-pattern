//
//  ViewController.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 16/9/21.
//

import UIKit
protocol HomeViewProtocol: AnyObject {
    func updateUI()
}
class ViewController: UIViewController, Storyboarded {

    var presenter: PresenterHomeViewProtocol?

    @IBOutlet var buttons: [UIButton]!
    
    @IBAction func buttonTapped(_ sender: Any) {
        presenter?.buttonPressed()
    }
    
    @IBAction func onPresent(_ sender: Any) {
        presenter?.onPresent()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension ViewController: HomeViewProtocol {
    func updateUI() {
        
        for array in buttons {
            array.backgroundColor = UIColor(red: 252 / 255.0, green: 62 / 255.0, blue: 38 / 255.0, alpha: 1.0)
            array.layer.cornerRadius = array.frame.height / 4
        }
    }
    
    
}
