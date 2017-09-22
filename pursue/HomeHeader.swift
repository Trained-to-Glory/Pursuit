//
//  HomeHeader.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/21/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class HomeHeader: UICollectionViewCell {
    
    let homeImageView : UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .orange
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(homeImageView)
        homeImageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 15, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
