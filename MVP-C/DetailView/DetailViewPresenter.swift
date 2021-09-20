//
//  DetailViewPresenter.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 16/9/21.
//

import Foundation

protocol DetailExternal: AnyObject {
    func onDetailProduct()
    func onDetailTours()
    func onDetailGastronomy()
    func onDetailTransport()
    func onDetailHotels()
    func onDetailShops()
}

protocol detailPresenterProtocol: AnyObject {
    func viewDidLoad()
    func buttonPress()
    func buttonTours()
    func buttonGastronomy()
    func buttonTransport()
    func buttonHotels()
    func buttonShops()
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
    
    func buttonTours() {
        coordinator?.onDetailTours()
    }
    
    func buttonGastronomy() {
        coordinator?.onDetailGastronomy()
    }
    
    func buttonTransport() {
        coordinator?.onDetailTransport()
    }
    
    func buttonHotels() {
        coordinator?.onDetailHotels()
    }
    
    func buttonShops() {
        coordinator?.onDetailShops()
    }
}

