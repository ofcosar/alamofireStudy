//
//  ViewController.swift
//  alamofireS
//
//  Created by ömer faruk coşar on 29.08.2022.
//

import UIKit
import Lottie
class ViewController: UIViewController {
private let vm = DogInfoViewModel()
    @IBOutlet var lottieAnimation2: AnimationView!
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var lottieAnimation: AnimationView!
    override func viewDidLoad() {
        super.viewDidLoad()
        vm.updateLabelDelegate = self
        configurate()
    }

    @IBAction func getInfoAction(_ sender: UIButton) {
        lottieAnimation2.isHidden = true
        lottieAnimation.isHidden  = false
        vm.getRandomDogInfo()
    }
    func configurate(){
        lottieAnimation.play()
        lottieAnimation.loopMode = .loop
        lottieAnimation2.play()
        lottieAnimation2.loopMode = .loop
        lottieAnimation2.isHidden = true
        lottieAnimation.isHidden  = false
    }
    
}
extension ViewController : UpdateLabelDelegate{
    func updateLabel(info: String) {
        infoLabel.text = info
        lottieAnimation2.isHidden = false
        lottieAnimation.isHidden  = true
        
    }
    
    
}

