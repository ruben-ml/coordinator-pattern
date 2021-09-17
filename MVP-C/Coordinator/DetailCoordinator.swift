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
    
    func onDetailProduct() {
        navigateToDetailSwitch()
    }
}

extension DetailCoordinator {
    func navigateToDetailSwitch() {
        let vc = DetailSwitchViewController.instantiate()
//        let presenter = DetailViewPresenter(view: vc)
//        presenter.coordinator = self
//        vc.presenter = presenter
        navigationController.pushViewController(vc, animated: true)
    }

}
