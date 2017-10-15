//
//  PostDetailHeader.swift
//  pursue
//
//  Created by Jaylen Sanders on 10/14/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

protocol PostDetailHeaderDelegate {
    func goBack(for cell : PostDetailHeader)
}

class PostDetailHeader : HomeHeader {
    
    var postDeatilDelegate : PostDetailHeaderDelegate?
    
    lazy var backButton : UIButton = {
       let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "back-button").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(dismissView), for: .touchUpInside)
        return button
    }()
    
    func dismissView(){
        postDeatilDelegate?.goBack(for: self)
    }
    
    override func setupViews() {
        backgroundColor = .clear
        pageTitle.isHidden = true
        pageTitleDetail.isHidden = true
        pursuitImageRow.isHidden = true
        
        addSubview(backButton)
        addSubview(exploreChatIcon)
        addSubview(exploreCameraIcon)
        
        backButton.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 30, height: 30)
        exploreChatIcon.anchor(top: pageTitle.topAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 24, width: 0, height: 20)
        exploreCameraIcon.anchor(top: exploreChatIcon.topAnchor, left: nil, bottom: exploreChatIcon.bottomAnchor, right: exploreChatIcon.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 30, width: 25, height: 0)
    }
    
}
