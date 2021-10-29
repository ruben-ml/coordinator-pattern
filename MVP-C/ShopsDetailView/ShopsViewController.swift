//
//  ShopsViewController.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 28/10/21.
//

import UIKit

protocol shopsViewProtocol: AnyObject {
    func load()
}

class ShopsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    var data = [shopsDTO]()
    private let presenter: shopsPresenterProtocol
    
    init(presenter: shopsPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: "ShopsViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "shopsTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate =  self
        tableView.estimatedRowHeight = 135
        tableView.rowHeight = UITableView.automaticDimension
        tableView.reloadData()
        presenter.viewDidLoad()
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
    
}

// MARK: - shopsViewProtocol
extension ShopsViewController: shopsViewProtocol {
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "shopsJSON", withExtension: "json") {
            do {
                let data = try! Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try! jsonDecoder.decode([shopsDTO].self, from: data)
                
                self.data = dataFromJson
            }
        }
    }
}
