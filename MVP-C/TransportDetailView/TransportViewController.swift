//
//  TransportViewController.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 20/9/21.
//

import UIKit

class TransportViewController: UIViewController, Storyboarded, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var transportCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transportCollection.dataSource = self
        transportCollection.delegate = self
        transportCollection.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return transports.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "transportCell", for: indexPath) as! TransportCollectionViewCell
        cell.setupTransport(with: transports[indexPath.row])
        cell.contentView.backgroundColor = R.color.cellColor()
        cell.layer.cornerRadius = cell.layer.frame.height / 3
        return cell
    }
}

extension TransportViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat((collectionView.frame.size.width / 2) - 10), height: CGFloat(150))
    }
}
