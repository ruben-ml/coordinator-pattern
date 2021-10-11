//
//  DetailCoordinator.swift
//  MVP-C
//
//  Created by Saúl Moreno Abril 01 on 17/9/21.
//

import Foundation
import UIKit

class DetailCoordinator: Coordinator {
    
    var childrenCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(nav: UINavigationController) {
        self.navigationController = nav
    }
    
    func start() {
        let vc = DetailViewController.instantiate()
        let presenter = DetailViewPresenter(view: vc)
        presenter.coordinator = self
        vc.presenter = presenter
        navigationController.pushViewController(vc, animated: true)
    }
}

extension DetailCoordinator: DetailExternal {
    func onDetailTours() {
        navigateToDetailTours()
    }
    
    func onDetailProduct() {
        navigateToDetailInformation()
    }
    
    func onDetailGastronomy() {
        navigateToDetailGastronomy()
    }
    
    func onDetailTransport() {
        navigateToDetailTransport()
    }
    
    func onDetailHotels() {
        navigateToDetailHotels()
    }
    
    func onDetailShops() {
        navigateToDetailShops()
    }
}

extension DetailCoordinator {
    func navigateToDetailInformation() {
        let vc = InformationViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }
    
    func navigateToDetailTours() {
        let vc = ToursViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }
    
    func navigateToDetailGastronomy() {
        let vc = GastronomyViewController()
        navigationController.pushViewController(vc, animated: true)
    }
    
    func navigateToDetailTransport() {
        let vc = TransportViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }

    func navigateToDetailHotels() {
        let vc = HotelsViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }
    
    func navigateToDetailShops() {
        let vc = ShopsViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }
}
