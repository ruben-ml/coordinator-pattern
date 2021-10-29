//
//  ShopsViewPresenter.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 28/10/21.
//

import Foundation

protocol shopsPresenterProtocol: AnyObject {
   func viewDidLoad()
}

public class ShopsViewPresenter: shopsPresenterProtocol {
  
    weak var vista: shopsViewProtocol?
    
    func viewDidLoad() {
        vista?.load()
    }
    
}
