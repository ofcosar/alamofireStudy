//
//  DogInfoViewModel.swift
//  alamofireS
//
//  Created by ömer faruk coşar on 29.08.2022.
//

import Foundation
class DogInfoViewModel{
    var  updateLabelDelegate : UpdateLabelDelegate?
    private var info = "welcome"{
        didSet{
            updateLabelDelegate?.updateLabel(info: info)
        }
    }
    private let repository = Repository()
    func getRandomDogInfo(){
        Task.init{
            
            let dogFact = await repository.dogInfoService.getInfo()!.facts[0]
            try await Task.sleep(nanoseconds: 1_000_000_000)
            DispatchQueue.main.async {
                self.info = dogFact
            }
                
                    
        
        
    }
}

}
