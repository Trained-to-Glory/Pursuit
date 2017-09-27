//
//  ExploreImageRow.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/22/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class ExploreImageRow: UICollectionViewCell {
    
    let pursuitImage : UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "khyzyl-saleem-i8web")
        iv.layer.masksToBounds = true
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        
        addSubview(pursuitImage)
        pursuitImage.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 18, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
