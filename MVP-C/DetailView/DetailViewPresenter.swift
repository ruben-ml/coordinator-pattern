//
//  DetailViewPresenter.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 16/9/21.
//

import Foundation

protocol DetailExternal: AnyObject {
    func onDetailProduct()
}

protocol detailPresenterProtocol: AnyObject {
    func viewDidLoad()
    func buttonPress()
}

class DetailViewPresenter: detailPresenterProtocol {
    
    weak var coordinator: DetailExternal?
    weak var view: detailViewProtocol?
    
    init(view: detailViewProtocol) {
        self.view = view
    }
    
    func viewDidLoad() {
        view?.updateUI()
    }
    
    func buttonPress() {
        coordinator?.onDetailProduct()
    }
}

