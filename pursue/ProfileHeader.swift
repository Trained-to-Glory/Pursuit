//
//  ProfileHeader.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/12/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

protocol ProfileHeaderDelegate {
    func handleCamera(for cell : ProfileHeader)
    func handleMessage(for cell : ProfileHeader)
}

class ProfileHeader: HomeHeader {
    
    var profileDelegate : ProfileHeaderDelegate?
    
    var user : User? {
        didSet {
            guard let profileImageURL = user?.profileImageURL else { return }
            profileImageView.loadImage(urlString: profileImageURL)
        }
    }
    
    override func handleCamera() {
        profileDelegate?.handleCamera(for: self)
    }
    
    override func handleMessage() {
        profileDelegate?.handleMessage(for: self)
    }
    
    // MARK: - User Profile Picture & Username
    
    let profileImageView : CustomImageView = {
        let iv = CustomImageView()
        iv.layer.cornerRadius = 40
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    override func setupViews() {
        addSubview(chatIcon)
        pageTitle.text = "Test27"
    
        chatIcon.anchor(top: pageTitle.topAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 24, width: 0, height: 20)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
