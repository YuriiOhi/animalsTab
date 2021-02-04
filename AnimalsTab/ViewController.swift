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
    
    let buttonMonkey = ButtonClass()//with: SoundButtonModel(title: "monkey1"))
    let buttonRacoon = ButtonClass()//with: SoundButtonModel(title: "raccoon3"))
    let buttonSLion = ButtonClass()//with: SoundButtonModel(title: "sealion2"))
    let buttonWolf = ButtonClass()//with: SoundButtonModel(title: "wolf8"))
    
    @IBAction func buttonPressed(sender: ButtonClass) {
        switch sender {
        case buttonMonkey:
            buttonMonkey.passTrack()
        case buttonRacoon:
            buttonRacoon.passTrack()
        case buttonSLion:
            buttonSLion.passTrack()
        case buttonWolf:
            buttonWolf.passTrack()
        default:
            print("ANIMALS")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setDelegates()
        setTracksTitles()
    }
    
    func setDelegates() {
        buttonMonkey.delegate = self
        buttonRacoon.delegate = self
        buttonSLion.delegate = self
        buttonWolf.delegate = self
    }
    
    func setTracksTitles() {
        buttonMonkey.configureWithModel(title: "monkey1")
        buttonRacoon.configureWithModel(title: "raccoon3")
        buttonSLion.configureWithModel(title: "sealion2")
        buttonWolf.configureWithModel(title: "wolf8")
    }
    
    
}

extension ViewController: ButtonDelegate {
    func playTrackWithModel(track: String) {
        audioPlayer.prepareToPLay(track: track)
    }
}
