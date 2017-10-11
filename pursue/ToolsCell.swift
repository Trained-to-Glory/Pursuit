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
        button.backgroundColor = UIColor.init(white: 0.4, alpha: 0.05)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
    }()
    
    let exerciseLabel : UILabel = {
       let label = UILabel()
        label.text = "Adobe"
        label.font = UIFont.systemFont(ofSize: 18, weight: 25)
        
        return label
    }()
    
    let toolImage : UIImageView = {
       let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "samuel-l")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 8
        return iv
    }()
    
    let execeriseCompletedLabel : UILabel = {
        let label = UILabel()
        label.text = "123,456 completions"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 2
        return label
    }()
    
    let execeriseTimeLabel : UILabel = {
        let label = UILabel()
        label.text = "01:23:45"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let pictureOverlay : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.init(white: 0, alpha: 0.4)
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        
        addSubview(toolsButton)
        toolsButton.addSubview(toolImage)
        toolsButton.addSubview(pictureOverlay)
        pictureOverlay.addSubview(execeriseCompletedLabel)
        pictureOverlay.addSubview(exerciseLabel)
        
        toolsButton.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 150, paddingLeft: 0, paddingBottom: 150, paddingRight: 0, width: 0, height: 0)
        toolImage.anchor(top: toolsButton.topAnchor, left: toolsButton.leftAnchor, bottom: toolsButton.bottomAnchor, right: toolsButton.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        pictureOverlay.anchor(top: toolImage.topAnchor, left: toolImage.leftAnchor, bottom: toolImage.bottomAnchor, right: toolImage.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        exerciseLabel.anchor(top: pictureOverlay.topAnchor, left: pictureOverlay.leftAnchor, bottom: nil, right: pictureOverlay.rightAnchor, paddingTop: 4, paddingLeft: 4, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
        execeriseCompletedLabel.anchor(top: nil, left: exerciseLabel.leftAnchor, bottom: exerciseLabel.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 8, paddingRight: 0, width: 50, height: 60)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
