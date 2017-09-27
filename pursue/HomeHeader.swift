//
//  HomeHeader.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/21/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

protocol HomeHeaderDelegate {
    func handleCamera(for cell : HomeHeader)
    func handleMessage(for cell : HomeHeader)
}
class HomeHeader: ExploreHeaderRow {
    
    var delegate : HomeHeaderDelegate?
    
    let chatIcon : UIButton = {
       let button = UIButton()
        button.setBackgroundImage(#imageLiteral(resourceName: "send2").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(handleMessage), for: .touchUpInside)
        return button
    }()
    
    let cameraIcon : UIButton = {
       let button = UIButton()
        button.setBackgroundImage(#imageLiteral(resourceName: "camera3").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(handleCamera), for: .touchUpInside)
        return button
    }()
    
    func handleCamera() {
        delegate?.handleCamera(for: self)
    }
    
    func handleMessage(){
        delegate?.handleMessage(for: self)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        
        pageTitle.text = "Home"
        pageTitleDetail.isHidden = true
        pursuitImageRow.isHidden = true
        
        addSubview(chatIcon)
        addSubview(cameraIcon)
        chatIcon.anchor(top: pageTitle.topAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 24, width: 0, height: 20)
        cameraIcon.anchor(top: chatIcon.topAnchor, left: nil, bottom: chatIcon.bottomAnchor, right: chatIcon.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 30, width: 25, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
