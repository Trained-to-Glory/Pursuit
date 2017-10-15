//
//  PursuitHeader.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/25/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

protocol PursuitHeaderDelegate {
    func handleCamera(for cell : PursuitHeader)
    func handleMessage(for cell : PursuitHeader)
}


class PursuitHeader: HomeHeader {
    
    var pursuitDelegate : PursuitHeaderDelegate?
    
    override func handleMessage() {
        pursuitDelegate?.handleMessage(for: self)
    }
    
    override func handleCamera() {
        pursuitDelegate?.handleCamera(for: self)
    }
    
    override func setupViews() {
        addSubview(homeChatIcon)
        addSubview(homeCameraIcon)
        
        homeChatIcon.anchor(top: pageTitle.topAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 24, width: 0, height: 20)
        cameraIcon.anchor(top: homeChatIcon.topAnchor, left: nil, bottom: homeChatIcon.bottomAnchor, right: homeChatIcon.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 30, width: 25, height: 0)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(pageTitle)
        pageTitle.text = "Design"
        pageTitleDetail.isHidden = true
        pursuitImageRow.isHidden = true
        backgroundColor = .clear

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
