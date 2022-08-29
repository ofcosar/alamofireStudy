//
//  DogInfoService.swift
//  alamofireS
//
//  Created by ömer faruk coşar on 29.08.2022.
//

import Foundation
import Alamofire
class DogInfoService{
    private let baseUrl = "http://dog-api.kinduff.com"
    func getInfo() async -> DogInfo?{
        let request = AF.request("\(baseUrl)/api/facts")
        let task = request.serializingDecodable(DogInfo.self)
        let response = await task.response
        return response.value

    }
}
