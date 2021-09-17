//
//  MainCoordinator.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 16/9/21.
//

import Foundation
import UIKit


protocol Coordinator {
    var childrenCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}

class MainCoordinator: Coordinator {
    
    var childrenCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init() {
        navigationController = UINavigationController()
    }
    func start() {
        let vc = ViewController.instantiate()
        let presenter = PresenterHomeView(vista: vc)
        presenter.coordinator = self
        vc.presenter = presenter
        navigationController.pushViewController(vc, animated: true)
    }
    
    func orangeButton() {
        navigateToDetailSwitch()

    }
    func greenButton() {
        let vc = DetailSwitchViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
        
    }
    
    func navigateToDetailSwitch() {
        let vc = DetailSwitchViewController.instantiate()
//        let presenter = DetailViewPresenter(view: vc)
//        presenter.coordinator = self
//        vc.presenter = presenter
        navigationController.pushViewController(vc, animated: false)
    }
    
    func navigateToDetail() {
        let vc = DetailViewController.instantiate()
        let presenter = DetailViewPresenter(view: vc)
        presenter.coordinator = self
        vc.presenter = presenter
        navigationController.pushViewController(vc, animated: false)
    }
    
}
