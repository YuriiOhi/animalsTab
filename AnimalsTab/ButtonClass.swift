//
//  ButtonClass.swift
//  AnimalsTab
//
//  Created by Yurii on 2020/11/19.
//

import UIKit

struct SoundButtonModel {
    private(set) var imageName: String
    private(set) var trackTitle: String
}

protocol ButtonDelegate: AnyObject {
    func playTrackWithModel(track: String)
}

class ButtonClass: UIButton {
    private var buttonModel: SoundButtonModel?
    weak var delegate: ButtonDelegate?
    
    func configure(with model: SoundButtonModel) {
        setImage(UIImage(named: model.imageName), for: .normal)
        setImage(UIImage(named: model.imageName), for: .highlighted)
        buttonModel = model
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let trackTitle = buttonModel?.trackTitle else { return }
        delegate?.playTrackWithModel(track: trackTitle)
    }
}
