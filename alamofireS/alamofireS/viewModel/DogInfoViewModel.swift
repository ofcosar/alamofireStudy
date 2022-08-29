//
//  DogInfoViewModel.swift
//  alamofireS
//
//  Created by ömer faruk coşar on 29.08.2022.
//

import Foundation
class DogInfoViewModel{
    private let repository = Repository()
    func getRandomDogInfo(){
        repository.dogInfoService.getInfo()
    }
}
