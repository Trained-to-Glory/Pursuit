//
//  ActionHeader.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/23/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class ActionHeader: HomeHeader {

    override func setupViews() {
        addSubview(chatIcon)
        addSubview(cameraIcon)
        
        chatIcon.anchor(top: pageTitle.topAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 24, width: 0, height: 20)
        cameraIcon.anchor(top: chatIcon.topAnchor, left: nil, bottom: chatIcon.bottomAnchor, right: chatIcon.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 30, width: 25, height: 0)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        pageTitle.text = "Pursue"
        pageTitleDetail.isHidden = true
        pursuitImageRow.isHidden = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
