//
//  HomeBottomCell.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/26/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class HomeBottomCell: HomeTopCell {
    
    override func setupView() {
        super.setupView()
        cardInfoLabel.text = "Tom Hanks"
        postCover.backgroundColor = UIColor(red: 51/255, green: 255/255, blue: 51/255, alpha: 0.5)
        viewsNumber.textColor = .white
        viewsNumber.text = "56"
        postImage.image = #imageLiteral(resourceName: "tom-2")
    }
}
