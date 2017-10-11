//
//  HomeRowCells.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/21/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class HomeRowCells : UICollectionViewCell {
    
    let homeImage : UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "tumblr_nbje6dualg1r46py4o1_1280")
        iv.layer.masksToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.layer.cornerRadius = 8
        return iv
    }()
    
    let homeMainDescription : UILabel = {
       let label = UILabel()
        label.text = "Wonder Woman"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .black
        return label
    }()
    
    let homeSubDesctiption : UILabel = {
        let label = UILabel()
        label.text = "Return To IMAX"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFontWeightThin)
        return label
    }()
    
    let cardView : CardView = {
        let card = CardView()
        card.backgroundColor = .clear
        return card
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        
        addSubview(homeImage)
        addSubview(homeMainDescription)
        addSubview(homeSubDesctiption)

        homeImage.anchor(top: nil, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 250)
        homeImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        homeMainDescription.anchor(top: homeImage.bottomAnchor, left: homeImage.leftAnchor, bottom: nil, right: homeImage.rightAnchor, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 14)
        homeSubDesctiption.anchor(top: homeMainDescription.bottomAnchor, left: homeMainDescription.leftAnchor, bottom: nil, right: homeMainDescription.rightAnchor, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
