//
//  ToolsCell.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/25/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class ToolsCell: UICollectionViewCell {
    
    let toolsButton : UIButton = {
        let button = UIButton()
        button.setTitle("Tool Name", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor.init(white: 0.4, alpha: 0.05)
        button.layer.cornerRadius = 8
        button.contentHorizontalAlignment = .left
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 12, 0, 0)
        return button
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        
        addSubview(toolsButton)
        toolsButton.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
