//
//  CategoryHeaderRow.swift
//  pursue
//
//  Created by Jaylen Sanders on 10/26/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class CategoryHeaderRow : UICollectionViewCell {
    
    let chatIcon : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(#imageLiteral(resourceName: "send2").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let cellId = "cellId"
    
    let pageTitle : UILabel = {
        let label = UILabel()
        label.text = "Animals"
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
    
    let categoryBackIcon : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(#imageLiteral(resourceName: "back-button").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    fileprivate func setupPageTitle(){
        addSubview(categoryBackIcon)
        addSubview(pageTitle)
        addSubview(exploreChatIcon)

        categoryBackIcon.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        pageTitle.anchor(top: topAnchor, left: categoryBackIcon.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 0, height: 30)
        exploreChatIcon.anchor(top: pageTitle.topAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 24, width: 0, height: 20)
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupPageTitle()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

