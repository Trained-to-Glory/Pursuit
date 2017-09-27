//
//  PursuitTommorrowSecondaryCard.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/26/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class PursuitTommorrowSecondaryCard: PursuitTommorrowPrimaryCard {
    override func setupView() {
        super.setupView()
        titleLabel.isHidden = true
        titleDetailLabel.text = "Wednesday, October 4"
        cardImage.image = UIImage(named: "EXP 10 Speed 6 - Front Three Quarter 1398 x 699")
        execeriseLabel.text = "Pick A Car"
        execeriseLabel.font = UIFont.systemFont(ofSize: 24, weight: 25)
    }
}
