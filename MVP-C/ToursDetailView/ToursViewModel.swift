//
//  ToursViewModel.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 5/11/21.
//

import Foundation

protocol ToursViewModelProtocol {
    func getDataFromServiceClass()
}

class ToursViewModel: ToursViewModelProtocol {
    
    private var serviceData: ToursService
    weak var view: ToursViewProtocol?
    
    init(service: ToursService) {
        self.serviceData = service
    }
    
    func getDataFromServiceClass() {
        let data = serviceData.getDataFromJson()
        view?.set(data)
    }

}
