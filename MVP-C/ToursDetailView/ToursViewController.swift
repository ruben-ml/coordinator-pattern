//
//  ToursViewController.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 19/9/21.
//

import UIKit

protocol ToursViewProtocol: AnyObject {
    func set(_ tours: [ToursDTO])
}

class ToursViewController: UIViewController {

    var tours = [ToursDTO]()
    private let viewmodel: ToursViewModelProtocol
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.dataSource = self
        table.estimatedRowHeight = 44
        table.register(ToursDetailTableViewCell.nib(), forCellReuseIdentifier: ToursDetailTableViewCell.identifier)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.separatorStyle = .none
        return table
    }()
    
    init (viewmodel: ToursViewModelProtocol) {
        self.viewmodel = viewmodel
        super.init(nibName: ToursViewController.className, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        setupConstraints()
        viewmodel.getDataFromServiceClass()
    }
    
    func setUp() {
        view.addSubview(tableView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

}

// MARK: - UITableViewDataSource
extension ToursViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tours.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "ToursDetailTableViewCell", for: indexPath) as! ToursDetailTableViewCell
        cell.lblName?.text = tours[indexPath.row].titleName
        cell.lblTime?.text = tours[indexPath.row].nameDate
        cell.lblTitle?.text = tours[indexPath.row].nameTours
        cell.titleIdiom?.text = tours[indexPath.row].idiom
    return cell
    }
    
}

extension ToursViewController: ToursViewProtocol {
    func set(_ tours: [ToursDTO]) {
        self.tours = tours
        self.tableView.reloadData()
    }
    
    
}
