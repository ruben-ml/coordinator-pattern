//
//  ShopsViewController.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 28/10/21.
//

import UIKit

class ShopsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let data = ListShops().listShops
        print(data)
    }
}
