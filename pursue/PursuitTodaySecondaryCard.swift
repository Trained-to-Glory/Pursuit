//
//  PursuitTodaySecondaryCard.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/25/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class PursuitTodaySecondaryCard: PursuitTodayPrimaryCard {
    
    override func setupView() {
        super.setupView()
        titleLabel.isHidden = true
        titleDetailLabel.isHidden = true
        catchUpLabel.isHidden = true
        profilePicture.isHidden = true
        toolCollectionView.isHidden = true
        execeriseLabel.text = "Use Photoshop"
        execeriseLabel.font = UIFont.systemFont(ofSize: 24, weight: 25)
        
        cardImage.image = UIImage(named: "tumblr_nbicgmPoWW1r46py4o1_1280")
        
        addSubview(exerciseCard)
        
        exerciseCard.addSubview(execeriseLabel)
        exerciseCard.addSubview(execeriseCompletedLabel)
        exerciseCard.addSubview(execeriseTimeLabel)
        
        exerciseCard.anchor(top: titleDetailLabel.bottomAnchor, left: titleDetailLabel.leftAnchor, bottom: nil, right: catchUpLabel.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 200)
        
        execeriseLabel.anchor(top: exerciseCard.topAnchor, left: exerciseCard.leftAnchor, bottom: nil, right: exerciseCard.rightAnchor, paddingTop: 14, paddingLeft: 16, paddingBottom: 0, paddingRight: 0, width: 0, height: 30)
        execeriseCompletedLabel.anchor(top: nil, left: execeriseLabel.leftAnchor, bottom: exerciseCard.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 14, paddingRight: 0, width: 140, height: 20)
        execeriseTimeLabel.anchor(top: execeriseCompletedLabel.topAnchor, left: nil, bottom: nil, right: exerciseCard.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 80, height: 20)
    }
}
