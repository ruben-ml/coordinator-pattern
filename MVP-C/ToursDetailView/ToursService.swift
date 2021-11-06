//
//  ToursService.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 5/11/21.
//

import Foundation

protocol ToursServiceProtocol: AnyObject {
    func getDataFromJson() -> [ToursDTO]
}

class ToursService: ToursServiceProtocol {
    func getDataFromJson() -> [ToursDTO] {
        guard let fileLocation = Bundle.main.url(forResource: "Tours", withExtension: "json") else { return [] }
        
        do {
            let data = try! Data(contentsOf: fileLocation)
            let jsonDecoder = JSONDecoder()
            let dataFromJson = try jsonDecoder.decode([ToursDTO].self, from: data)
            return dataFromJson
        }
        catch {
            return []
        }
    }
}
