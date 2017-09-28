//
//  ProfileHeader.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/12/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class ProfileHeader: HomeHeader {
    
    var user : User? {
        didSet {
            guard let profileImageURL = user?.profileImageURL else { return }
            profileImageView.loadImage(urlString: profileImageURL)
            usernameLabel.text = user?.username
        }
    }
    
    
    // MARK: - User Profile Picture & Username
    
    let profileImageView : CustomImageView = {
        let iv = CustomImageView()
        iv.layer.cornerRadius = 40
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let usernameLabel : UILabel = {
        let label = UILabel()
        label.font =  UIFont.systemFont(ofSize: 18, weight: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let userBio : UILabel = {
       let label = UILabel()
       label.font = UIFont.systemFont(ofSize: 14)
       label.textColor = .black
       label.text = "My effort is different from yours."
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    let postsLabel : UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "23\n", attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 18, weight: 25)])
        
        attributedText.append(NSAttributedString(string: "Posts", attributes: [NSForegroundColorAttributeName: UIColor.black, NSFontAttributeName: UIFont.systemFont(ofSize: 14)]))
        
        label.attributedText = attributedText
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let pursuitsLabel : UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "398\n", attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 18, weight: 25)])
        
        attributedText.append(NSAttributedString(string: "Pursuits", attributes: [NSForegroundColorAttributeName: UIColor.black, NSFontAttributeName: UIFont.systemFont(ofSize: 14)]))
        
        label.attributedText = attributedText
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let interestsLabel : UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "936\n", attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 18, weight: 25)])
        
        attributedText.append(NSAttributedString(string: "Interests", attributes: [NSForegroundColorAttributeName: UIColor.black, NSFontAttributeName: UIFont.systemFont(ofSize: 14)]))
        
        label.attributedText = attributedText
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let gridButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "grid"), for: .normal)
        button.tintColor = UIColor(white: 0, alpha: 1)
        return button
    }()
    
    let listButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "list"), for: .normal)
        button.tintColor = UIColor(white: 0, alpha: 0.2)
        return button
    }()
    
    let bottomBarView : RectangleView = {
       let view = RectangleView()
        return view
    }()
    
    let bottomBarViewTop : TopRectangleView = {
       let view = TopRectangleView()
        return view
    }()
    
    let bottomBarFill : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let bottomBarTopFill : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    fileprivate func setupBottomToolbar(){
        let topDividerView = RectangleView()
        
        let bottomDividerView = RectangleView()
        bottomDividerView.backgroundColor = .lightGray
        
        let stackView = UIStackView(arrangedSubviews: [gridButton, listButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        
        addSubview(bottomBarView)
        addSubview(bottomBarViewTop)
        bottomBarView.addSubview(bottomBarFill)
        bottomBarViewTop.addSubview(bottomBarTopFill)
        bottomBarTopFill.addSubview(stackView)
        addSubview(topDividerView)
        addSubview(bottomDividerView)
        
        bottomBarView.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 50)
        bottomBarViewTop.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 50)
        bottomBarFill.anchor(top: bottomBarView.topAnchor, left: bottomBarView.leftAnchor, bottom: bottomBarView.bottomAnchor, right: bottomBarView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        bottomBarTopFill.anchor(top: bottomBarView.topAnchor, left: bottomBarView.leftAnchor, bottom: bottomBarView.bottomAnchor, right: bottomBarView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        stackView.anchor(top: nil, left: postsLabel.leftAnchor, bottom: bottomAnchor, right: interestsLabel.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 50)
    }
    
    fileprivate func setupUserStatsView(){
        let stackView = UIStackView(arrangedSubviews: [postsLabel, pursuitsLabel, interestsLabel])
        stackView.distribution = .fillEqually
        
        addSubview(stackView)
        stackView.anchor(top: userBio.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 24, paddingLeft: 32, paddingBottom: 0, paddingRight: 32, width: 0, height: 70)
    }
    
    override func setupViews() {
        backgroundColor = .clear
        
        addSubview(profileImageView)
        addSubview(usernameLabel)
        addSubview(userBio)
        
        addSubview(chatIcon)
        addSubview(cameraIcon)
        
        pageTitle.text = "Test27"
        pageTitleDetail.isHidden = true
        pursuitImageRow.isHidden = true
        
        profileImageView.anchor(top: chatIcon.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 48, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        profileImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        usernameLabel.anchor(top: profileImageView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 25)
        usernameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        userBio.anchor(top: usernameLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 6, paddingLeft: 12, paddingBottom: 0, paddingRight: 12, width: 0, height: 0)
        userBio.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        chatIcon.anchor(top: pageTitle.topAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 24, width: 0, height: 20)
        cameraIcon.anchor(top: chatIcon.topAnchor, left: nil, bottom: chatIcon.bottomAnchor, right: chatIcon.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 30, width: 25, height: 0)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupUserStatsView()
        setupBottomToolbar()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
