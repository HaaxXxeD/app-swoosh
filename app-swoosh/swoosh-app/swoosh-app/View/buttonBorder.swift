//
//  buttonBorder.swift
//  swoosh-app
//
//  Created by Anonymous on 04/03/2019.
//  Copyright © 2019 Anonymous. All rights reserved.
//

import UIKit

class buttonBorder: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
        
    }

}
