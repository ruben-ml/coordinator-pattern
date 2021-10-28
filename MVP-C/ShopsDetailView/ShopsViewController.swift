//
//  ShopsViewController.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 28/10/21.
//

import UIKit

class ShopsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    let data = ShopsViewPresenter().listShops
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "shopsTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate =  self
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? shopsTableViewCell {
            cell.titleLbl.text = data[indexPath.row].name
            cell.descriptionLbl.text = data[indexPath.row].description
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
