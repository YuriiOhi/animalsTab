//
//  ViewController.swift
//  AnimalsTab
//
//  Created by Yurii on 2020/11/19.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let audioPlayer = Player()
    
    let buttonMonkey = ButtonClass(with: SoundButtonModel(title: "monkey1"))
    let buttonRacoon = ButtonClass(with: SoundButtonModel(title: "raccoon3"))
    let buttonSLion = ButtonClass(with: SoundButtonModel(title: "sealion2"))
    let buttonWolf = ButtonClass(with: SoundButtonModel(title: "wolf8"))
    
    @IBAction func buttonPressed(sender: ButtonClass) {
        switch sender {
        case buttonMonkey:
            buttonMonkey.getTitle()
        case buttonRacoon:
            buttonRacoon.getTitle()
        case buttonSLion:
            buttonSLion.getTitle()
        case buttonWolf:
            buttonWolf.getTitle()
        default:
            print("ANIMALS")
        }
    }
    
    func setDelegates() {
        buttonMonkey.delegate = self
        buttonRacoon.delegate = self
        buttonSLion.delegate = self
        buttonWolf.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegates()
    }
}

extension ViewController: ButtonDelegate {
    func playTrackWithModel(modelTitle: SoundButtonModel) {
        audioPlayer.prepareToPLay(track: modelTitle.getTitle())
    }
}
