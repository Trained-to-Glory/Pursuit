//
//  ExploreHeaderRow.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/22/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

protocol ExploreHeaderDelegate {
    
    func handleCamera(for cell : ExploreHeaderRow)
    func handleMessage(for cell : ExploreHeaderRow)
}

class ExploreHeaderRow: UICollectionViewCell {
    
    var delegate : ExploreHeaderDelegate?
    
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
    
    @objc func handleCamera() {
        delegate?.handleCamera(for: self)
    }
    
    @objc func handleMessage(){
        delegate?.handleMessage(for: self)
    }
    
    let cellId = "cellId"
    
    let pageTitle : UILabel = {
        let label = UILabel()
        label.text = "Explore"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .black
        label.backgroundColor = .clear
        return label
    }()
    
    let titleUnderline : UIView = {
       let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let exploreChatIcon : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(#imageLiteral(resourceName: "send2").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let exploreCameraIcon : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(#imageLiteral(resourceName: "camera3").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()

    fileprivate func setupPageTitle(){
        addSubview(pageTitle)
        pageTitle.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 0, height: 30)
        
        addSubview(exploreChatIcon)
        addSubview(exploreCameraIcon)
        
        exploreChatIcon.anchor(top: pageTitle.topAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 24, width: 0, height: 20)
        exploreCameraIcon.anchor(top: exploreChatIcon.topAnchor, left: nil, bottom: exploreChatIcon.bottomAnchor, right: exploreChatIcon.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 30, width: 25, height: 0)
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupPageTitle()

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
