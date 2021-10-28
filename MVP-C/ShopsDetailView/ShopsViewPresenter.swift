//
//  ShopsViewPresenter.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 28/10/21.
//

import Foundation

public class ShopsViewPresenter {
     
    var listShops = [shopsDTO]()
    
    init() {
        load()
    }
    
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "shopsJSON", withExtension: "json") {
            do {
                let data = try! Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try! jsonDecoder.decode([shopsDTO].self, from: data)
                
                self.listShops = dataFromJson
            } 
        }
    }
}
