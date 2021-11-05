//
//  ToursViewController.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 19/9/21.
//

import UIKit

class ToursViewController: UIViewController, Storyboarded {

    lazy var tableView: UITableView = {
        let table = UITableView()
        table.dataSource = self
        table.estimatedRowHeight = 44
        table.register(ToursDetailTableViewCell.nib(), forCellReuseIdentifier: ToursDetailTableViewCell.identifier)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.separatorColor = UIColor.lightGray
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        setupConstraints()
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
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "ToursDetailTableViewCell", for: indexPath)
    return cell
    }
    
}
