//
//  PursuitLater.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/26/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class PursuitLater: PursuitTommorrowSecondaryCard {
    override func setupView() {
        super.setupView()
        titleDetailLabel.text = "At Your Leisure"
        cardImage.image = UIImage(named: "car-3")
    }
}
