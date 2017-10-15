//
//  PostView.swift
//  pursue
//
//  Created by Jaylen Sanders on 10/14/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class PostView : UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let postImage : UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "samuel-l")
        return iv
        
    }()
    
    let postLabel : UILabel = {
        let label = UILabel()
        label.text = "Wonder Woman"
        label.font = UIFont.systemFont(ofSize: 24, weight: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var addButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        return button
    }()
    
    let plusForButton : UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "add-button-white-hi").withRenderingMode(.alwaysOriginal)
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let postDescription : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "I’m still pretty sick today, I think it would be smart to take at least one more day to get to one hundred percent."
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let usernameLabel : UILabel = {
        let label = UILabel()
        label.text = "Test27"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let fullnameLabel : UILabel = {
        let label = UILabel()
        label.text = "Jaylen Sanders"
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFontWeightThin)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let userPhoto : UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "samuel-l")
        iv.layer.cornerRadius = 30
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
        
    }()
    
    let pageChangeOptions : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    lazy var aboutButton : UIButton = {
       let label = UIButton()
        label.setTitle("ABOUT", for: .normal)
        label.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        label.addTarget(self, action: #selector(toggleAboutUnderline), for: .touchUpInside)
        return label
    }()
    
    lazy var likesLabel : UIButton = {
        let label = UIButton()
        label.setTitle("LIKES", for: .normal)
        label.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        label.addTarget(self, action: #selector(toggleLikesUnderline), for: .touchUpInside)
        return label
    }()
    
    lazy var commentsLabel : UIButton = {
        let label = UIButton()
        label.setTitle("COMMENTS", for: .normal)
        label.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        label.addTarget(self, action: #selector(toggleCommentsUnderline), for: .touchUpInside)
        return label
    }()
    
    lazy var relatedLabel : UIButton = {
        let label = UIButton()
        label.setTitle("RELATED", for: .normal)
        label.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        label.addTarget(self, action: #selector(toggleRelatedUnderline), for: .touchUpInside)
        return label
    }()
    
    let cellId = "cellId"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        toggleAboutUnderline()
        
        pageChangeOptions.dataSource = self
        pageChangeOptions.delegate = self
        pageChangeOptions.register(PostOptions.self, forCellWithReuseIdentifier: cellId)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PostOptions
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width, height: 390)
    }
    
    let bottomDividerView = UIView()

    func setupView(){
        backgroundColor = .clear
        addSubview(postImage)
        addSubview(postLabel)
        addSubview(usernameLabel)
        addSubview(userPhoto)
        addSubview(postDescription)
        addSubview(addButton)
        addSubview(fullnameLabel)
        addButton.addSubview(plusForButton)
        
        bottomDividerView.backgroundColor = UIColor.init(white: 0, alpha: 0.2)
        
        let usernameUnderLine = UIView()
        usernameUnderLine.backgroundColor = UIColor.init(white: 0, alpha: 0.2)
        
        let stackView = UIStackView(arrangedSubviews: [aboutButton, likesLabel, commentsLabel, relatedLabel])
        stackView.axis = .horizontal
        stackView.spacing = 30
        
        addSubview(stackView)
        addSubview(usernameUnderLine)
        addSubview(bottomDividerView)
        
        stackView.anchor(top: postLabel.bottomAnchor, left: postLabel.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 295, height: 50)
        
        let userstackUnderLine = UIView()
        userstackUnderLine.backgroundColor = UIColor.init(white: 0, alpha: 0.2)
        
        let userstackTopLine = UIView()
        userstackTopLine.backgroundColor = UIColor.init(white: 0, alpha: 0.2)
        
        let userInfoStack = UIStackView(arrangedSubviews: [fullnameLabel, usernameLabel])
        userInfoStack.axis = .vertical
        userInfoStack.spacing = 10
        userInfoStack.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(userInfoStack)
        addSubview(userstackTopLine)
        addSubview(userstackUnderLine)
        
        userInfoStack.anchor(top: nil, left: userPhoto.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 12, paddingBottom: 0, paddingRight: 12, width: 0, height: 0)
        userInfoStack.centerYAnchor.constraint(equalTo: userPhoto.centerYAnchor).isActive = true
        
        bottomDividerView.anchor(top: stackView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0.5)
        
        postImage.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: (frame.height / 2) + 20)
        postLabel.anchor(top: postImage.bottomAnchor, left: postImage.leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 32, paddingLeft: 12, paddingBottom: 0, paddingRight: 12, width: 0, height: 26)
        addButton.anchor(top: postImage.bottomAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 26, paddingLeft: 12, paddingBottom: 0, paddingRight: 12, width: 40, height: 40)
        plusForButton.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 15, height: 15)
        plusForButton.centerYAnchor.constraint(equalTo: addButton.centerYAnchor).isActive = true
        plusForButton.centerXAnchor.constraint(equalTo: addButton.centerXAnchor).isActive = true
        userPhoto.anchor(top: bottomDividerView.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 18, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 60, height: 60)
        usernameUnderLine.anchor(top: userPhoto.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 18, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0.5)
        postDescription.anchor(top: userPhoto.bottomAnchor, left: userPhoto.leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 6, paddingBottom: 0, paddingRight: 28, width: 0, height: 70)
    }

    let aboutLabelUnderline = UIView()

    func toggleAboutUnderline(){
        aboutLabelUnderline.backgroundColor = .black
        
        likesLabel.setTitleColor(.gray, for: .normal)
        aboutButton.setTitleColor(.black, for: .normal)
        commentsLabel.setTitleColor(.gray, for: .normal)
        relatedLabel.setTitleColor(.gray, for: .normal)
        
        aboutButton.titleLabel?.isHidden = false
        
        aboutLabelUnderline.isHidden = false
        likesLabelUnderline.isHidden = true
        commentsLabelUnderline.isHidden = true
        relatedLabelUnderline.isHidden = true
        
        addSubview(aboutLabelUnderline)
        aboutLabelUnderline.anchor(top: nil, left: aboutButton.leftAnchor, bottom: bottomDividerView.topAnchor, right: aboutButton.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 2.5)
    }

    let likesLabelUnderline = UIView()

    func toggleLikesUnderline(){
        likesLabelUnderline.backgroundColor = .black
        
        likesLabel.setTitleColor(.black, for: .normal)
        aboutButton.setTitleColor(.gray, for: .normal)
        commentsLabel.setTitleColor(.gray, for: .normal)
        relatedLabel.setTitleColor(.gray, for: .normal)
        
        likesLabelUnderline.isHidden = false
        aboutLabelUnderline.isHidden = true
        commentsLabelUnderline.isHidden = true
        relatedLabelUnderline.isHidden = true
        
        addSubview(likesLabelUnderline)
        likesLabelUnderline.anchor(top: nil, left: likesLabel.leftAnchor, bottom: bottomDividerView.topAnchor, right: likesLabel.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 2.5)
    }
    
    let commentsLabelUnderline = UIView()

    func toggleCommentsUnderline(){
        commentsLabelUnderline.backgroundColor = .black
        
        likesLabel.setTitleColor(.gray, for: .normal)
        aboutButton.setTitleColor(.gray, for: .normal)
        commentsLabel.setTitleColor(.black, for: .normal)
        relatedLabel.setTitleColor(.gray, for: .normal)
        
        commentsLabelUnderline.isHidden = false
        aboutLabelUnderline.isHidden = true
        relatedLabelUnderline.isHidden = true
        likesLabelUnderline.isHidden = true
        
        addSubview(commentsLabelUnderline)
        commentsLabelUnderline.anchor(top: nil, left: commentsLabel.leftAnchor, bottom: bottomDividerView.topAnchor, right: commentsLabel.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 2.5)
    }
    
    let relatedLabelUnderline = UIView()

    func toggleRelatedUnderline() {
        relatedLabelUnderline.backgroundColor = .black
        
        likesLabel.setTitleColor(.gray, for: .normal)
        aboutButton.setTitleColor(.gray, for: .normal)
        commentsLabel.setTitleColor(.gray, for: .normal)
        relatedLabel.setTitleColor(.black, for: .normal)
        

        relatedLabelUnderline.isHidden = false
        likesLabelUnderline.isHidden = true
        commentsLabelUnderline.isHidden = true
        aboutLabelUnderline.isHidden = true
        
        addSubview(relatedLabelUnderline)
        relatedLabelUnderline.anchor(top: nil, left: relatedLabel.leftAnchor, bottom: bottomDividerView.topAnchor, right: relatedLabel.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 2.5)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
