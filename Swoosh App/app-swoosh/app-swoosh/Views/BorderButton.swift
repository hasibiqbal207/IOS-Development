//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Hasib Iqbal Pranto on 10/2/17.
//  Copyright © 2017 Hasib Iqbal Pranto. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

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
