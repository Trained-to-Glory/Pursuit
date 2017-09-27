//
//  PursuitTommorrowPrimaryCard.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/25/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class PursuitTommorrowPrimaryCard: PursuitTodayPrimaryCard {
    
    override func setupView() {
        super.setupView()
        titleLabel.text = "Tomorrow"
        titleDetailLabel.text = "Tuesday, October 3"
        profilePicture.isHidden = true
        catchUpLabel.isHidden = true
        
        cardImage.image = UIImage(named: "clean-8")
        addSubview(titleLabel)
        titleLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 48, paddingLeft: 32, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)
    }
}
