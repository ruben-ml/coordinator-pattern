//
//  HotelsViewController.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 20/9/21.
//

import UIKit

class HotelsViewController: UIViewController, Storyboarded, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayHotels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellHotel", for: indexPath) as! HotelsTableViewCell
        cell.setupHotels(with: arrayHotels[indexPath.row])
        return cell
    }

}
