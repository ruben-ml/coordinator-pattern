//
//  PresenterHomeView.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 16/9/21.
//

import Foundation
import UIKit

protocol HomeCoordinatorExternal: AnyObject {
    func onBuy()
    func onAdd()
}

protocol PresenterHomeViewProtocol: AnyObject {
    func viewDidLoad()
    func buttonPressed()
    func onPresent()
    
}

class PresenterHomeView: PresenterHomeViewProtocol{
    weak var view: HomeViewProtocol?
    weak var coordinator: MainCoordinator?
    
    init(vista: HomeViewProtocol) {
        self.view = vista
    }
    
    func viewDidLoad() {
       view?.updateUI()
    }
   
    func buttonPressed() {
       coordinator?.onBuy()
    }
    
    func onPresent() {
        coordinator?.onAdd()
    }
}

