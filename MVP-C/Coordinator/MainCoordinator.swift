//
//  MainCoordinator.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 16/9/21.
//

import Foundation
import UIKit


protocol Coordinator: AnyObject {
    var childrenCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}

class MainCoordinator: NSObject, Coordinator {
    
    var childrenCoordinators: [Coordinator] = []
    private var completions: [UIViewController: () -> Void] = [:]
    
    var navigationController: UINavigationController
    
    override init() {
        navigationController = UINavigationController()
    }
    
    func start() {
        let vc = ViewController.instantiate()
        let presenter = PresenterHomeView(vista: vc)
        presenter.coordinator = self
        vc.presenter = presenter
        navigationController.pushViewController(vc, animated: true)
    }
}

extension MainCoordinator: HomeCoordinatorExternal {
    func onBuy() {
        navigateToDetail()
    }
    
    func onAdd() {
        presentDetail()
    }
}

extension MainCoordinator {
    func navigateToDetail() {
        let coordinator = DetailCoordinator(nav: navigationController)
        coordinator.start()
        
        childrenCoordinators.append(coordinator)
    }
    
    func presentDetail() {
        let newNav =  UINavigationController()
        let coordinator = DetailCoordinator(nav: newNav)
        coordinator.start()
        navigationController.present(newNav, animated: true)
        
        completions[newNav] = { [weak self] in
            self?.childrenCoordinators.removeAll { $0 === coordinator }
        }
        
        childrenCoordinators.append(coordinator)
        
        newNav.presentationController?.delegate = self
    }
}

extension MainCoordinator: UIAdaptivePresentationControllerDelegate {

    func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
        print("AAAA")
        let nav = presentationController.presentedViewController
        completions.removeValue(forKey: nav)?()
        print("BBBB")
    }
}
