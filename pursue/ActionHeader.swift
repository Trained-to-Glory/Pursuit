//
//  ActionHeader.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/23/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit
protocol ActionHeaderDelegate {
    
    func handleCamera(for cell : ActionHeader)
    func handleMessage(for cell : ActionHeader)
}


class ActionHeader: HomeHeader {
    
    var actionDelegate : ActionHeaderDelegate?
    
    override func handleCamera() {
        actionDelegate?.handleCamera(for: self)
    }
    
    override func handleMessage(){
        actionDelegate?.handleMessage(for: self)
    }
    
    override func setupViews() {
        addSubview(homeChatIcon)
        addSubview(homeCameraIcon)
        
        homeChatIcon.anchor(top: pageTitle.topAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 24, width: 0, height: 20)
        homeCameraIcon.anchor(top: homeChatIcon.topAnchor, left: nil, bottom: homeChatIcon.bottomAnchor, right: chatIcon.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 30, width: 25, height: 0)
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
