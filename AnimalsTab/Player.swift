//
//  Player.swift
//  AnimalsTab
//
//  Created by Yurii on 2020/12/2.
//

import UIKit
import Foundation
import AVFoundation

class Player {
    var audioPlayer = AVAudioPlayer()
    
    func prepareToPLay(track: String) {
        print(" class Player func prepareToPLay(track: String)")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: track, ofType: "mp3")!))
            audioPlayer.play()
        } catch {
            print(error)
        }
    }
}
