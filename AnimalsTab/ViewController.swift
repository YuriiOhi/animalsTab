//
//  ViewController.swift
//  AnimalsTab
//
//  Created by Yurii on 2020/11/19.
//

import UIKit
import AVFoundation

final class ViewController: UIViewController  {
    // MARK: - Public Properties
    @IBOutlet weak var topLeftButton: ButtonClass!
    @IBOutlet weak var topRightButton: ButtonClass!
    @IBOutlet weak var bottomLeftButton: ButtonClass!
    @IBOutlet weak var bottomRightButton: ButtonClass!
    
    // MARK: - Private Properties
    private let audioPlayer = Player()
    
    // MARK: - UIViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtons()
    }
}

// MARK: - Private Methods
private extension ViewController {
    func configureButtons() {
        let monkeyModel = SoundButtonModel(imageName: "monkey", trackTitle: "monkey1")
        let raccoonModel = SoundButtonModel(imageName: "racoon", trackTitle: "raccoon3")
        let seaLionModel = SoundButtonModel(imageName: "seaLion", trackTitle: "sealion2")
        let wolfModel = SoundButtonModel(imageName: "wolf", trackTitle: "wolf8")
        
        configure(button: topLeftButton, with: wolfModel)
        configure(button: topRightButton, with: seaLionModel)
        configure(button: bottomLeftButton, with: raccoonModel)
        configure(button: bottomRightButton, with: monkeyModel)
    }
    
    func configure(button: ButtonClass, with model: SoundButtonModel) {
        button.delegate = self
        button.configure(with: model)
    }
}
// MARK: - ButtonDelegate
extension ViewController: ButtonDelegate {
    func playTrackWithModel(track: String) {
        audioPlayer.prepareToPLay(track: track)
    }
}
