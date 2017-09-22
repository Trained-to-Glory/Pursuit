//
//  ProfilePhotoCell.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/12/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class ProfileDetailsCell: UICollectionViewCell {
    
    // MARK: - Setup User Stacked Options
    
    lazy var infoButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Info", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.addTarget(self, action: #selector(handleToggleInfo), for: .touchUpInside)
        return button
    }()
    
    lazy var photosButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Photos", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.addTarget(self, action: #selector(handleTogglePhotos), for: .touchUpInside)
        return button
    }()
    
    lazy var skillsButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Skills", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.addTarget(self, action: #selector(handleToggleSkills), for: .touchUpInside)
        return button
    }()
    
    lazy var settingsButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Settings", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.addTarget(self, action: #selector(handleToggleSettings), for: .touchUpInside)
        return button
    }()
    
    @objc fileprivate func handleToggleSkills(){
        skillsButton.backgroundColor = UIColor.init(white: 0.4, alpha: 0.05)
        settingsButton.backgroundColor = UIColor.init(white: 1, alpha: 0)
        infoButton.backgroundColor = UIColor.init(white: 1, alpha: 0)
        photosButton.backgroundColor = UIColor.init(white: 1, alpha: 0)
        
        photoImageView.isHidden = true

    }
    
    
    @objc fileprivate func handleToggleSettings(){
        skillsButton.backgroundColor = UIColor.init(white: 1, alpha: 0)
        settingsButton.backgroundColor = UIColor.init(white: 0.4, alpha: 0.05)
        infoButton.backgroundColor = UIColor.init(white: 1, alpha: 0)
        photosButton.backgroundColor = UIColor.init(white: 1, alpha: 0)
        
        photoImageView.isHidden = true

    }
    
    @objc fileprivate func handleTogglePhotos(){
        skillsButton.backgroundColor = UIColor.init(white: 1, alpha: 0)
        settingsButton.backgroundColor = UIColor.init(white: 1, alpha: 0)
        infoButton.backgroundColor = UIColor.init(white: 1, alpha: 0)
        photosButton.backgroundColor = UIColor.init(white: 0.4, alpha: 0.05)

        photoImageView.isHidden = false

 
    }
    
    @objc fileprivate func handleToggleInfo(){
        skillsButton.backgroundColor = UIColor.init(white: 1, alpha: 0)
        settingsButton.backgroundColor = UIColor.init(white: 1, alpha: 0)
        infoButton.backgroundColor = UIColor.init(white: 0.4, alpha: 0.05)
        photosButton.backgroundColor = UIColor.init(white: 1, alpha: 0)
        
        photoImageView.isHidden = true
    }
    
    
    
    fileprivate func setupUserProfileOptions(){
        
        let stackView = UIStackView(arrangedSubviews: [infoButton, photosButton, skillsButton,settingsButton])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 70

        addSubview(stackView)
        addSubview(photoImageView)
        photoImageView.addSubview(viewMorePhotos)
        
        stackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: frame.width / 4, height: 0)
        photoImageView.anchor(top: topAnchor, left: stackView.rightAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        viewMorePhotos.anchor(top: nil, left: nil, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 80, height: 75)
    }
    
    let photoImageView : CustomImageView = {
        let iv = CustomImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "tumblr_nbj794TLRx1r46py4o1_1280")
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    let viewMorePhotos : UIButton = {
        let button = UIButton()
        button.setTitle("10+", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.backgroundColor = UIColor.lightGray
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUserProfileOptions()
        
        photoImageView.isHidden = true
        infoButton.backgroundColor = UIColor.init(white: 0.4, alpha: 0.05)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
