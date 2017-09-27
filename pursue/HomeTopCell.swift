//
//  HomeTopCell.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/26/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class HomeTopCell: UICollectionViewCell {
    
    let cardInfoLabel : UILabel = {
        let label = UILabel()
        label.text = "Scarlett Johansson"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12, weight: 25)
        return label
    }()
    
    let viewsNumber : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 42, weight: 25)
        label.numberOfLines = 0
        label.text = "28"
        label.textColor = .blue
        return label
    }()
    
    let viewsLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "Videos"
        label.textColor = .white
        return label
    }()
    
    let exerciseCard : SmallerCardView = {
        let view = SmallerCardView()
        view.backgroundColor = .green
        return view
    }()
    
    let postCover : UIView = {
       let film = UIView()
        film.backgroundColor = UIColor(red: 255/255, green: 153/255, blue: 51/255, alpha: 0.5)
        film.layer.cornerRadius = 8
        film.layer.masksToBounds = true
        return film
    }()
    
    let postImage : UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "scarlett")
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 8
        iv.layer.masksToBounds = true
        return iv
    }()
    
    func setupView(){
        addSubview(postImage)
        postImage.addSubview(postCover)
        postImage.addSubview(cardInfoLabel)
        postImage.addSubview(viewsNumber)
        postImage.addSubview(viewsLabel)

        postImage.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        postCover.anchor(top: postImage.topAnchor, left: postImage.leftAnchor, bottom: postImage.bottomAnchor, right: postImage.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        cardInfoLabel.anchor(top: postCover.topAnchor, left: postCover.leftAnchor, bottom: nil, right: postCover.rightAnchor, paddingTop: 12, paddingLeft: 16, paddingBottom: 0, paddingRight: 8, width: 0, height: 15)
        viewsNumber.anchor(top: cardInfoLabel.bottomAnchor, left: cardInfoLabel.leftAnchor, bottom: nil, right: cardInfoLabel.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 12, width: 0, height: 45)
        viewsLabel.anchor(top: viewsNumber.bottomAnchor, left: viewsNumber.leftAnchor, bottom: nil, right: viewsNumber.rightAnchor, paddingTop: 4, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 50, height: 15)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
