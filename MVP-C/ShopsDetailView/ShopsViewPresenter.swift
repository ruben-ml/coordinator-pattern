//
//  ShopsViewPresenter.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 28/10/21.
//

import Foundation

protocol ShopsPresenterProtocol: AnyObject {
   func viewDidLoad()
}

public class ShopsViewPresenter: ShopsPresenterProtocol {
  
    weak var vista: shopsViewProtocol?
    
    func viewDidLoad() {
        vista?.load()
    }
    
}
