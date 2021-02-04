//
//  ButtonClass.swift
//  AnimalsTab
//
//  Created by Yurii on 2020/11/19.
//

import UIKit

struct SoundButtonModel {
    private var trackTitle: String
    
    init(title: String) {
        self.trackTitle = title
    }

    func getTitle() -> String {
        return self.trackTitle
    }
}

protocol ButtonDelegate: AnyObject {
    func playTrackWithModel(track: String)
}

class ButtonClass: UIButton {
    var buttonModel: SoundButtonModel?
    weak var delegate: ButtonDelegate?

    func configureWithModel(title: String) {
        self.buttonModel = SoundButtonModel(title: title)
    }
    
    func passTrack() {
        let model = self.buttonModel!.getTitle()
        delegate?.playTrackWithModel(track: model)
    } 
}
