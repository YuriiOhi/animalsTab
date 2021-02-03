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
    func playTrackWithModel(modelTitle: SoundButtonModel)
}

class ButtonClass: UIButton {
    var buttonModel: SoundButtonModel?
    
    init(with customButtonModel: SoundButtonModel) {
        self.buttonModel = customButtonModel
        super.init(frame: .zero)
    }
    
    weak var delegate: ButtonDelegate?
    
    func getTitle() {
        let model = self.buttonModel.unsafelyUnwrapped
        delegate?.playTrackWithModel(modelTitle: model)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
