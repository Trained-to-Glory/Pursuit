//
//  HomeRow.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/21/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class HomeRow: PursuitTodayPrimaryCard {
    
    let cardInfoLabel : UILabel = {
       let label = UILabel()
        label.text = "Return To IMAX Screens"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        titleLabel.isHidden = true
        titleDetailLabel.isHidden = true
        catchUpLabel.isHidden = true
        profilePicture.isHidden = true
        toolCollectionView.isHidden = true
        
        execeriseLabel.text = "Wonder Woman"
        execeriseLabel.font = UIFont.systemFont(ofSize: 24, weight: 25)
        execeriseLabel.numberOfLines = 0
        
        cardImage.image = #imageLiteral(resourceName: "wonder-woman")
        cardImage.layer.cornerRadius = 4
        
        addSubview(exerciseCard)
        addSubview(cardInfoLabel)
        addSubview(execeriseLabel)
        addSubview(execeriseCompletedLabel)
        addSubview(execeriseTimeLabel)
        
        cardInfoLabel.anchor(top: cardImage.topAnchor, left: cardImage.leftAnchor, bottom: nil, right: cardImage.rightAnchor, paddingTop: 8, paddingLeft: 16, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        execeriseLabel.anchor(top: cardInfoLabel.bottomAnchor, left: cardInfoLabel.leftAnchor, bottom: nil, right: nil, paddingTop: 4, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 200, height: 80)
        exerciseCard.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 4, paddingLeft: 32, paddingBottom: 20, paddingRight: 32, width: 0, height: 0)
        execeriseCompletedLabel.anchor(top: nil, left: execeriseLabel.leftAnchor, bottom: exerciseCard.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 14, paddingRight: 0, width: 140, height: 20)
        execeriseTimeLabel.anchor(top: execeriseCompletedLabel.topAnchor, left: nil, bottom: nil, right: exerciseCard.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 80, height: 20)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
