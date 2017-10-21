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
        super.setupViews()
        
        pageTitle.text = "Design"
        pageTitleDetail.isHidden = true
        pursuitImageRow.isHidden = true
        backgroundColor = .clear
        
        addSubview(pageTitle)
        pageTitle.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 0, height: 30)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
